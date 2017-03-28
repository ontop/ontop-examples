WITH HFW AS ( 
SELECT SID, dFrom, dTo, prevWSpeed, wSpeed 
FROM (SELECT station_id AS SID,
lag(date_time, 1) OVER (PARTITION BY station_id ORDER BY date_time) AS dFrom,
date_time AS dTo,
lag(wind_speed_set_1, 1) OVER (PARTITION BY station_id ORDER BY date_time) AS prevWSpeed,
wind_speed_set_1 AS wSpeed,
ROW_NUMBER() OVER(PARTITION BY station_id ORDER BY date_time) AS rnm 
FROM tb_newyorkdata2005) AS a 
WHERE wSpeed >= 118 AND rnm > 1 AND dTo - dFrom <= interval '1 day'),

C1_HFW (Start_ts, End_ts, ts, SID) AS (
SELECT 1, 0 , dFrom, SID
FROM HFW 
UNION ALL
SELECT 0, 1, dTo, SID
FROM HFW  
),

C2_HFW AS (
SELECT 
SUM(Start_ts) OVER (PARTITION BY SID ORDER BY ts, End_ts ROWS UNBOUNDED PRECEDING) AS Crt_Total_ts_1,
SUM(End_ts) OVER (PARTITION BY SID ORDER BY ts, End_ts ROWS UNBOUNDED PRECEDING) AS Crt_Total_ts_2,
SUM(Start_ts) OVER (PARTITION BY SID ORDER BY ts, End_ts ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING) AS Prv_Total_ts_1,
SUM(End_ts) OVER (PARTITION BY SID ORDER BY ts, End_ts ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING) AS Prv_Total_ts_2,
ts,
SID
FROM C1_HFW
),

C3_HFW AS (
SELECT (Crt_Total_ts_1 - Crt_Total_ts_2) AS Crt_Total_ts, (Prv_Total_ts_1 - Prv_Total_ts_2) AS Prv_Total_ts, ts, SID 
FROM C2_HFW
WHERE (Crt_Total_ts_1 - Crt_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) IS NULL
),

HURRICANE AS (
SELECT SID, (prevTs + interval '1 hour') AS dFrom, ts AS dTo FROM (
SELECT SID, LAG(ts,1) OVER (PARTITION BY SID ORDER BY ts, crt_total_ts) As prevTs,
ts,
Crt_Total_ts
FROM C3_HFW) F 
WHERE Crt_Total_ts = 0 AND ts - prevTs >= interval '1 hour'),

L1_HURR AS (
SELECT state, dFrom, dTo FROM tb_metadata, HURRICANE WHERE stid = SID
),

L2_HURR (Start_ts, End_ts, ts, state) AS (
SELECT 1, 0 , dFrom, state
FROM L1_HURR 
UNION ALL
SELECT 0, 1, dTo, state
FROM L1_HURR  
),

L3_HURR AS (
SELECT 
SUM(Start_ts) OVER (PARTITION BY state ORDER BY ts, End_ts ROWS UNBOUNDED PRECEDING) AS Crt_Total_ts_1,
SUM(End_ts) OVER (PARTITION BY state ORDER BY ts, End_ts ROWS UNBOUNDED PRECEDING) AS Crt_Total_ts_2,
SUM(Start_ts) OVER (PARTITION BY state ORDER BY ts, End_ts ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING) AS Prv_Total_ts_1,
SUM(End_ts) OVER (PARTITION BY state ORDER BY ts, End_ts ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING) AS Prv_Total_ts_2,
ts,
state
FROM L2_HURR
),

L4_HURR AS (
SELECT (Crt_Total_ts_1 - Crt_Total_ts_2) AS Crt_Total_ts, (Prv_Total_ts_1 - Prv_Total_ts_2) AS Prv_Total_ts, ts, state 
FROM L3_HURR
WHERE (Crt_Total_ts_1 - Crt_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) IS NULL
)

SELECT state, prevTs AS dFrom, ts AS dTo FROM (
SELECT state, LAG(ts,1) OVER (PARTITION BY state ORDER BY ts, crt_total_ts) As prevTs,
ts,
Crt_Total_ts
FROM L4_HURR) F 
WHERE Crt_Total_ts = 0;