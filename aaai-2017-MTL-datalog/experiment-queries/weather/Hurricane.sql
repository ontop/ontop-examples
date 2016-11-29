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

T1 (Start_ts, End_ts, ts, SID) AS (
SELECT 1, 0 , dFrom, SID
FROM HFW 
UNION ALL
SELECT 0, 1, dTo, SID
FROM HFW  
),

T2 AS (
SELECT 
SUM(Start_ts) OVER (PARTITION BY SID ORDER BY ts, End_ts ROWS UNBOUNDED PRECEDING) AS Crt_Total_ts_1,
SUM(End_ts) OVER (PARTITION BY SID ORDER BY ts, End_ts ROWS UNBOUNDED PRECEDING) AS Crt_Total_ts_2,
SUM(Start_ts) OVER (PARTITION BY SID ORDER BY ts, End_ts ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING) AS Prv_Total_ts_1,
SUM(End_ts) OVER (PARTITION BY SID ORDER BY ts, End_ts ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING) AS Prv_Total_ts_2,
ts,
SID
FROM T1
),

T3 AS (
SELECT (Crt_Total_ts_1 - Crt_Total_ts_2) AS Crt_Total_ts, (Prv_Total_ts_1 - Prv_Total_ts_2) AS Prv_Total_ts, ts, SID 
FROM T2
WHERE (Crt_Total_ts_1 - Crt_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) IS NULL
)

SELECT SID, (prevTs + interval '1 hour') AS dFrom, ts AS dTo FROM (
SELECT SID, LAG(ts,1) OVER (PARTITION BY SID ORDER BY ts, crt_total_ts) As prevTs,
ts,
Crt_Total_ts
FROM T3) F 
WHERE Crt_Total_ts = 0 AND ts - prevTs >= interval '1 hour';