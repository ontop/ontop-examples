CREATE TEMPORARY TABLE CD1500_1 AS
WITH C0_CD1500_1 AS (
SELECT * FROM  tb_sensor_unified WHERE maxrotorspeed IS NOT NULL
)

SELECT dFrom, dTo
FROM (
SELECT datetime as dFrom,
LEAD(datetime, 1) OVER (ORDER BY  datetime) AS dTo,
maxrotorspeed AS currRs,
LEAD(maxrotorspeed, 1) OVER (ORDER BY  datetime) AS nextRs
FROM C0_CD1500_1) F
WHERE currRs >= 1500 AND dTo IS NOT NULL AND dTo - dFrom <= interval '1 day';

CREATE TEMPORARY TABLE DIAMOND_CD1500_1 AS
WITH BOX_CD1500_1 AS ( 
SELECT (dFrom + interval '30 seconds') AS dFrom, dTo 
FROM CoalesceIntervalWithoutKey('CD1500_1', 'dFrom', 'dTo')
WHERE dTo - dFrom >= interval '30 seconds')

SELECT (dFrom + interval '30 seconds') AS dFrom, (dTo + interval '8 minutes') AS dTo FROM BOX_CD1500_1;

CREATE TEMPORARY TABLE C_CD1500_2 AS 
WITH C0_CD1500_2 AS (
SELECT * FROM  tb_sensor_unified WHERE maxrotorspeed IS NOT NULL
)

SELECT dFrom, dTo
FROM (
SELECT datetime as dFrom,
LEAD(datetime, 1) OVER (ORDER BY  datetime) AS dTo,
maxrotorspeed AS currRs,
LEAD(maxrotorspeed, 1) OVER (ORDER BY  datetime) AS nextRs
FROM C0_CD1500_2) F
WHERE currRs <= 200 AND dTo IS NOT NULL AND dTo - dFrom <= interval '1 day';

CREATE TEMPORARY TABLE CD1500_2 AS 
SELECT (dFrom + interval '30 seconds') AS dFrom, dTo 
FROM CoalesceIntervalWithoutKey('C_CD1500_2', 'dFrom', 'dTo')
WHERE dTo - dFrom >= interval '30 seconds';

CREATE INDEX DIAMOND_CD1500_1_IDX_FROM_TO ON DIAMOND_CD1500_1 (dFrom,dTo);
CREATE INDEX CD1500_2_IDX_FROM_TO ON CD1500_2 (dFrom,dTo);

CREATE TEMPORARY TABLE DIAMOND_D AS
WITH D AS (
SELECT
CASE 
WHEN DIAMOND_CD1500_1.dFrom > CD1500_2.dFrom AND CD1500_2.dTo > DIAMOND_CD1500_1.dFrom THEN DIAMOND_CD1500_1.dFrom
WHEN CD1500_2.dFrom > DIAMOND_CD1500_1.dFrom AND DIAMOND_CD1500_1.dTo > CD1500_2.dFrom THEN CD1500_2.dFrom
WHEN DIAMOND_CD1500_1.dFrom = CD1500_2.dFrom THEN DIAMOND_CD1500_1.dFrom
END AS dFrom,
CASE 
WHEN DIAMOND_CD1500_1.dTo < CD1500_2.dTo AND DIAMOND_CD1500_1.dTo > CD1500_2.dFrom THEN DIAMOND_CD1500_1.dTo
WHEN CD1500_2.dTo < DIAMOND_CD1500_1.dTo AND CD1500_2.dTo > DIAMOND_CD1500_1.dFrom THEN CD1500_2.dTo
WHEN DIAMOND_CD1500_1.dTo = CD1500_2.dTo THEN DIAMOND_CD1500_1.dTo
END AS dTo
FROM DIAMOND_CD1500_1, CD1500_2
WHERE
((DIAMOND_CD1500_1.dFrom > CD1500_2.dFrom AND CD1500_2.dTo > DIAMOND_CD1500_1.dFrom) OR (CD1500_2.dFrom > DIAMOND_CD1500_1.dFrom AND DIAMOND_CD1500_1.dTo > CD1500_2.dFrom) OR (DIAMOND_CD1500_1.dFrom = CD1500_2.dFrom)) AND
((DIAMOND_CD1500_1.dTo < CD1500_2.dTo AND DIAMOND_CD1500_1.dTo > CD1500_2.dFrom) OR (CD1500_2.dTo < DIAMOND_CD1500_1.dTo AND CD1500_2.dTo > DIAMOND_CD1500_1.dFrom) OR (DIAMOND_CD1500_1.dTo = CD1500_2.dTo)))

SELECT (dFrom - interval '9 minutes') as dFrom, dTo FROM D;

CREATE TEMPORARY TABLE CD6600_1 AS
WITH C0_CD6600_1 AS (
SELECT * FROM  tb_sensor_unified WHERE maxrotorspeed IS NOT NULL
)

SELECT dFrom, dTo
FROM (
SELECT datetime as dFrom,
LEAD(datetime, 1) OVER (ORDER BY  datetime) AS dTo,
maxrotorspeed AS currRs,
LEAD(maxrotorspeed, 1) OVER (ORDER BY  datetime) AS nextRs
FROM C0_CD6600_1) F
WHERE currRs >= 6600 AND dTo IS NOT NULL AND dTo - dFrom <= interval '1 day';


CREATE TEMPORARY TABLE DIAMOND_CD6600_1 AS
WITH BOX_CD6600_1 AS (
SELECT (dFrom + interval '30 seconds') AS dFrom, dTo 
FROM CoalesceIntervalWithoutKey('CD6600_1', 'dFrom', 'dTo')
WHERE  dTo - dFrom >= interval '30 seconds')

SELECT (dFrom + interval '30 seconds') AS dFrom, (dTo + interval '150 seconds') AS dTo FROM BOX_CD6600_1;

CREATE TEMPORARY TABLE C_CD6600_2 AS
WITH C0_CD6600_2 AS (
SELECT * FROM  tb_sensor_unified WHERE maxrotorspeed IS NOT NULL
)

SELECT dFrom, dTo
FROM (
SELECT datetime as dFrom,
LEAD(datetime, 1) OVER (ORDER BY  datetime) AS dTo,
maxrotorspeed AS currRs,
LEAD(maxrotorspeed, 1) OVER (ORDER BY  datetime) AS nextRs
FROM C0_CD6600_2) F
WHERE currRs <= 1500 AND dTo IS NOT NULL AND dTo - dFrom <= interval '1 day';

CREATE TEMPORARY TABLE CD6600_2 AS
SELECT (dFrom + interval '30 seconds') AS dFrom, dTo 
FROM CoalesceIntervalWithoutKey('C_CD6600_2', 'dFrom', 'dTo')
WHERE dTo - dFrom >= interval '30 seconds';


CREATE INDEX DIAMOND_CD6600_1_IDX_FROM_TO ON DIAMOND_CD6600_1 (dFrom,dTo);
CREATE INDEX CD6600_2_IDX_FROM_TO ON CD6600_2 (dFrom,dTo);

CREATE TEMPORARY TABLE C AS 
SELECT
CASE 
WHEN DIAMOND_CD6600_1.dFrom > CD6600_2.dFrom AND CD6600_2.dTo > DIAMOND_CD6600_1.dFrom THEN DIAMOND_CD6600_1.dFrom
WHEN CD6600_2.dFrom > DIAMOND_CD6600_1.dFrom AND DIAMOND_CD6600_1.dTo > CD6600_2.dFrom THEN CD6600_2.dFrom
WHEN DIAMOND_CD6600_1.dFrom = CD6600_2.dFrom THEN DIAMOND_CD6600_1.dFrom
END AS dFrom,
CASE 
WHEN DIAMOND_CD6600_1.dTo < CD6600_2.dTo AND DIAMOND_CD6600_1.dTo > CD6600_2.dFrom THEN DIAMOND_CD6600_1.dTo
WHEN CD6600_2.dTo < DIAMOND_CD6600_1.dTo AND CD6600_2.dTo > DIAMOND_CD6600_1.dFrom THEN CD6600_2.dTo
WHEN DIAMOND_CD6600_1.dTo = CD6600_2.dTo THEN DIAMOND_CD6600_1.dTo
END AS dTo
FROM DIAMOND_CD6600_1, CD6600_2
WHERE
((DIAMOND_CD6600_1.dFrom > CD6600_2.dFrom AND CD6600_2.dTo > DIAMOND_CD6600_1.dFrom) OR (CD6600_2.dFrom > DIAMOND_CD6600_1.dFrom AND DIAMOND_CD6600_1.dTo > CD6600_2.dFrom) OR (DIAMOND_CD6600_1.dFrom = CD6600_2.dFrom)) AND
((DIAMOND_CD6600_1.dTo < CD6600_2.dTo AND DIAMOND_CD6600_1.dTo > CD6600_2.dFrom) OR (CD6600_2.dTo < DIAMOND_CD6600_1.dTo AND CD6600_2.dTo > DIAMOND_CD6600_1.dFrom) OR (DIAMOND_CD6600_1.dTo = CD6600_2.dTo));


CREATE INDEX DIAMOND_D_IDX_FROM_TO ON DIAMOND_D (dFrom,dTo);
CREATE INDEX C_IDX_FROM_TO ON C (dFrom,dTo);

CREATE TEMPORARY TABLE DIAMOND_E AS 
WITH E AS (
SELECT
CASE 
WHEN DIAMOND_D.dFrom > C.dFrom AND C.dTo > DIAMOND_D.dFrom THEN DIAMOND_D.dFrom
WHEN C.dFrom > DIAMOND_D.dFrom AND DIAMOND_D.dTo > C.dFrom THEN C.dFrom
WHEN DIAMOND_D.dFrom = C.dFrom THEN DIAMOND_D.dFrom
END AS dFrom,
CASE 
WHEN DIAMOND_D.dTo < C.dTo AND DIAMOND_D.dTo > C.dFrom THEN DIAMOND_D.dTo
WHEN C.dTo < DIAMOND_D.dTo AND C.dTo > DIAMOND_D.dFrom THEN C.dTo
WHEN DIAMOND_D.dTo = C.dTo THEN DIAMOND_D.dTo
END AS dTo
FROM DIAMOND_D, C
WHERE
((DIAMOND_D.dFrom > C.dFrom AND C.dTo > DIAMOND_D.dFrom) OR (C.dFrom > DIAMOND_D.dFrom AND DIAMOND_D.dTo > C.dFrom) OR (DIAMOND_D.dFrom = C.dFrom)) AND
((DIAMOND_D.dTo < C.dTo AND DIAMOND_D.dTo > C.dFrom) OR (C.dTo < DIAMOND_D.dTo AND C.dTo > DIAMOND_D.dFrom) OR (DIAMOND_D.dTo = C.dTo)))

SELECT (dFrom - interval '2 minutes') as dFrom, dTo FROM E;

CREATE TEMPORARY TABLE MF AS
WITH C0_MF AS (
SELECT * FROM  tb_sensor_unified WHERE mainflame IS NOT NULL
)

SELECT dFrom, dTo
FROM (
SELECT datetime as dFrom,
LEAD(datetime, 1) OVER (ORDER BY  datetime) AS dTo,
mainflame AS currMf,
LEAD(mainflame, 1) OVER (ORDER BY  datetime) AS nextMf
FROM C0_MF) F
WHERE currMF <= 0.1 AND dTo IS NOT NULL AND dTo - dFrom <= interval '1 day';

CREATE TEMPORARY TABLE B AS
SELECT (dFrom + interval '10 seconds') AS dFrom, dTo 
FROM CoalesceIntervalWithoutKey('MF', 'dFrom', 'dTo')
WHERE dTo - dFrom >= interval '10 seconds';

CREATE INDEX DIAMOND_E_IDX_FROM_TO ON DIAMOND_E (dFrom,dTo);
CREATE INDEX B_IDX_FROM_TO ON B (dFrom,dTo);

CREATE TEMPORARY TABLE DIAMOND_F AS
WITH F AS (
SELECT
CASE 
WHEN DIAMOND_E.dFrom > B.dFrom AND B.dTo > DIAMOND_E.dFrom THEN DIAMOND_E.dFrom
WHEN B.dFrom > DIAMOND_E.dFrom AND DIAMOND_E.dTo > B.dFrom THEN B.dFrom
WHEN DIAMOND_E.dFrom = B.dFrom THEN DIAMOND_E.dFrom
END AS dFrom,
CASE 
WHEN DIAMOND_E.dTo < B.dTo AND DIAMOND_E.dTo > B.dFrom THEN DIAMOND_E.dTo
WHEN B.dTo < DIAMOND_E.dTo AND B.dTo > DIAMOND_E.dFrom THEN B.dTo
WHEN DIAMOND_E.dTo = B.dTo THEN DIAMOND_E.dTo
END AS dTo
FROM DIAMOND_E, B
WHERE
((DIAMOND_E.dFrom > B.dFrom AND B.dTo > DIAMOND_E.dFrom) OR (B.dFrom > DIAMOND_E.dFrom AND DIAMOND_E.dTo > B.dFrom) OR (DIAMOND_E.dFrom = B.dFrom)) AND
((DIAMOND_E.dTo < B.dTo AND DIAMOND_E.dTo > B.dFrom) OR (B.dTo < DIAMOND_E.dTo AND B.dTo > DIAMOND_E.dFrom) OR (DIAMOND_E.dTo = B.dTo)))

SELECT (dFrom - interval '2 minutes') as dFrom, dTo FROM F;

CREATE TEMPORARY TABLE AP AS
WITH C0_AP AS (
SELECT * FROM tb_sensor_unified WHERE activepower IS NOT NULL
)

SELECT dFrom, dTo, currAp, nextAp 
FROM (
SELECT datetime as dFrom,
LEAD(datetime, 1) OVER (ORDER BY  datetime) AS dTo,
activepower AS currAp,
LEAD(activepower, 1) OVER (ORDER BY  datetime) AS nextAp
FROM C0_AP) F
WHERE currAp < 0.15 AND dTo IS NOT NULL AND dTo - dFrom <= interval '1 day';

CREATE TEMPORARY TABLE A AS
SELECT (dFrom + interval '60 seconds') as dFrom, dTo 
FROM CoalesceIntervalWithoutKey('AP', 'dFrom', 'dTo')
WHERE dTo - dFrom >= interval '60 seconds';


CREATE INDEX DIAMOND_F_IDX_FROM_TO ON DIAMOND_F (dFrom,dTo);
CREATE INDEX A_IDX_FROM_TO ON A (dFrom,dTo);

SELECT
CASE 
WHEN DIAMOND_F.dFrom > A.dFrom AND A.dTo > DIAMOND_F.dFrom THEN DIAMOND_F.dFrom
WHEN A.dFrom > DIAMOND_F.dFrom AND DIAMOND_F.dTo > A.dFrom THEN A.dFrom
WHEN DIAMOND_F.dFrom = A.dFrom THEN DIAMOND_F.dFrom
END AS dFrom,
CASE 
WHEN DIAMOND_F.dTo < A.dTo AND DIAMOND_F.dTo > A.dFrom THEN DIAMOND_F.dTo
WHEN A.dTo < DIAMOND_F.dTo AND A.dTo > DIAMOND_F.dFrom THEN A.dTo
WHEN DIAMOND_F.dTo = A.dTo THEN DIAMOND_F.dTo
END AS dTo
FROM DIAMOND_F, A
WHERE
((DIAMOND_F.dFrom > A.dFrom AND A.dTo > DIAMOND_F.dFrom) OR (A.dFrom > DIAMOND_F.dFrom AND DIAMOND_F.dTo > A.dFrom) OR (DIAMOND_F.dFrom = A.dFrom)) AND
((DIAMOND_F.dTo < A.dTo AND DIAMOND_F.dTo > A.dFrom) OR (A.dTo < DIAMOND_F.dTo AND A.dTo > DIAMOND_F.dFrom) OR (DIAMOND_F.dTo = A.dTo));