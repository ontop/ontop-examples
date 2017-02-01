CREATE TEMPORARY TABLE DIAMOND_AP_1 AS
WITH C0_AP_1 AS (
SELECT * FROM tb_sensor_unified WHERE activepower IS NOT NULL
),

C1_AP_1 AS (
SELECT dFrom, dTo, currAp, nextAp 
FROM (
SELECT datetime as dFrom,
LEAD(datetime, 1) OVER (ORDER BY  datetime) AS dTo,
activepower AS currAp,
LEAD(activepower, 1) OVER (ORDER BY  datetime) AS nextAp
FROM C0_AP_1) F
WHERE currAp > 1.5 AND dTo IS NOT NULL AND dTo - dFrom <= interval '1 day'
),

C2_AP_1 (Start_ts, End_ts, ts) AS (
SELECT 1, 0 , dFrom
FROM C1_AP_1 
UNION ALL
SELECT 0, 1, dTo
FROM C1_AP_1  
),

C3_AP_1 AS (
SELECT 
SUM(Start_ts) OVER (ORDER BY ts, End_ts ROWS UNBOUNDED PRECEDING) AS Crt_Total_ts_1,
SUM(End_ts) OVER (ORDER BY ts, End_ts ROWS UNBOUNDED PRECEDING) AS Crt_Total_ts_2,
SUM(Start_ts) OVER (ORDER BY ts, End_ts ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING) AS Prv_Total_ts_1,
SUM(End_ts) OVER (ORDER BY ts, End_ts ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING) AS Prv_Total_ts_2,
ts
FROM C2_AP_1
),

C4_AP_1 AS (
SELECT (Crt_Total_ts_1 - Crt_Total_ts_2) AS Crt_Total_ts, (Prv_Total_ts_1 - Prv_Total_ts_2) AS Prv_Total_ts, ts
FROM C3_AP_1
WHERE (Crt_Total_ts_1 - Crt_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) IS NULL
),

AP_1 AS (
SELECT (prevTs + interval '10 seconds') as dFrom, ts AS dTo FROM (
SELECT LAG(ts,1) OVER (ORDER BY ts, crt_total_ts) As prevTs,
ts,
Crt_Total_ts
FROM C4_AP_1) F 
WHERE Crt_Total_ts = 0 AND ts - prevTs >= interval '10 seconds')

SELECT dFrom, (dTo + interval '1 minute 3 seconds') AS dTo FROM AP_1;

CREATE TEMPORARY TABLE AP_2 AS
WITH C0_AP_2 AS (
SELECT * FROM tb_sensor_unified WHERE activepower IS NOT NULL
),

C1_AP_2 AS (
SELECT dFrom, dTo, currAp, nextAp 
FROM (
SELECT datetime as dFrom,
LEAD(datetime, 1) OVER (ORDER BY  datetime) AS dTo,
activepower AS currAp,
LEAD(activepower, 1) OVER (ORDER BY  datetime) AS nextAp
FROM C0_AP_2) F
WHERE currAp < 0.15 AND dTo IS NOT NULL AND dTo - dFrom <= interval '1 day'
),

C2_AP_2 (Start_ts, End_ts, ts) AS (
SELECT 1, 0 , dFrom
FROM C1_AP_2 
UNION ALL
SELECT 0, 1, dTo
FROM C1_AP_2  
),

C3_AP_2 AS (
SELECT 
SUM(Start_ts) OVER (ORDER BY ts, End_ts ROWS UNBOUNDED PRECEDING) AS Crt_Total_ts_1,
SUM(End_ts) OVER (ORDER BY ts, End_ts ROWS UNBOUNDED PRECEDING) AS Crt_Total_ts_2,
SUM(Start_ts) OVER (ORDER BY ts, End_ts ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING) AS Prv_Total_ts_1,
SUM(End_ts) OVER (ORDER BY ts, End_ts ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING) AS Prv_Total_ts_2,
ts
FROM C2_AP_2
),

C4_AP_2 AS (
SELECT (Crt_Total_ts_1 - Crt_Total_ts_2) AS Crt_Total_ts, (Prv_Total_ts_1 - Prv_Total_ts_2) AS Prv_Total_ts, ts
FROM C3_AP_2
WHERE (Crt_Total_ts_1 - Crt_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) IS NULL
)

SELECT (prevTs + interval '60 seconds') as dFrom, ts AS dTo FROM (
SELECT LAG(ts,1) OVER (ORDER BY ts, crt_total_ts) As prevTs,
ts,
Crt_Total_ts
FROM C4_AP_2) F 
WHERE Crt_Total_ts = 0 AND ts - prevTs >= interval '60 seconds';

CREATE INDEX DIAMOND_AP_1_IDX_FROM ON DIAMOND_AP_1 (dFrom);
CREATE INDEX DIAMOND_AP_1_IDX_TO ON DIAMOND_AP_1 (dTo);
CREATE INDEX DIAMOND_AP_1_IDX_FROM_TO ON DIAMOND_AP_1 (dFrom,dTo);
CREATE INDEX AP_2_IDX_FROM ON AP_2 (dFrom);
CREATE INDEX AP_2_IDX_TO ON AP_2 (dTo);
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