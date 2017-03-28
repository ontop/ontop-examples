CREATE TEMPORARY TABLE AP_1 AS
WITH C0_AP_1 AS (
SELECT * FROM tb_sensor_unified WHERE activepower IS NOT NULL
)

SELECT dFrom, dTo 
FROM (
SELECT datetime as dFrom,
LEAD(datetime, 1) OVER (ORDER BY  datetime) AS dTo,
activepower AS currAp,
LEAD(activepower, 1) OVER (ORDER BY  datetime) AS nextAp
FROM C0_AP_1) F
WHERE currAp > 1.5 AND dTo IS NOT NULL AND dTo - dFrom <= interval '1 day';

CREATE TEMPORARY TABLE DIAMOND_AP_1 AS
WITH BOX_AP_1 AS (
SELECT (dFrom + interval '10 seconds') as dFrom, dTo 
FROM CoalesceIntervalWithoutKey('AP_1', 'dFrom', 'dTo')
WHERE  dTo - dFrom >= interval '10 seconds')

SELECT (dFrom + interval '1 minute') AS dFrom, (dTo + interval '1 minute 3 seconds') AS dTo FROM BOX_AP_1;

CREATE TEMPORARY TABLE T_AP_2 AS
WITH C0_AP_2 AS (
SELECT * FROM tb_sensor_unified WHERE activepower IS NOT NULL
)

SELECT dFrom, dTo 
FROM (
SELECT datetime as dFrom,
LEAD(datetime, 1) OVER (ORDER BY  datetime) AS dTo,
activepower AS currAp,
LEAD(activepower, 1) OVER (ORDER BY  datetime) AS nextAp
FROM C0_AP_2) F
WHERE currAp < 0.15 AND dTo IS NOT NULL AND dTo - dFrom <= interval '1 day';

CREATE TEMPORARY TABLE AP_2 AS
SELECT (dFrom + interval '60 seconds') as dFrom, dTo 
FROM CoalesceIntervalWithoutKey('T_AP_2', 'dFrom', 'dTo')
WHERE dTo - dFrom >= interval '60 seconds';

CREATE INDEX DIAMOND_AP_1_IDX_FROM_TO ON DIAMOND_AP_1 (dFrom,dTo);
CREATE INDEX AP_2_IDX_FROM_TO ON AP_2 (dFrom,dTo);

SELECT
CASE 
WHEN DIAMOND_AP_1.dFrom > AP_2.dFrom AND AP_2.dTo > DIAMOND_AP_1.dFrom THEN DIAMOND_AP_1.dFrom
WHEN AP_2.dFrom > DIAMOND_AP_1.dFrom AND DIAMOND_AP_1.dTo > AP_2.dFrom THEN AP_2.dFrom
WHEN DIAMOND_AP_1.dFrom = AP_2.dFrom THEN DIAMOND_AP_1.dFrom
END AS dFrom,
CASE 
WHEN DIAMOND_AP_1.dTo < AP_2.dTo AND DIAMOND_AP_1.dTo > AP_2.dFrom THEN DIAMOND_AP_1.dTo
WHEN AP_2.dTo < DIAMOND_AP_1.dTo AND AP_2.dTo > DIAMOND_AP_1.dFrom THEN AP_2.dTo
WHEN DIAMOND_AP_1.dTo = AP_2.dTo THEN DIAMOND_AP_1.dTo
END AS dTo
FROM DIAMOND_AP_1, AP_2
WHERE
((DIAMOND_AP_1.dFrom > AP_2.dFrom AND AP_2.dTo > DIAMOND_AP_1.dFrom) OR (AP_2.dFrom > DIAMOND_AP_1.dFrom AND DIAMOND_AP_1.dTo > AP_2.dFrom) OR (DIAMOND_AP_1.dFrom = AP_2.dFrom)) AND
((DIAMOND_AP_1.dTo < AP_2.dTo AND DIAMOND_AP_1.dTo > AP_2.dFrom) OR (AP_2.dTo < DIAMOND_AP_1.dTo AND AP_2.dTo > DIAMOND_AP_1.dFrom) OR (DIAMOND_AP_1.dTo = AP_2.dTo));