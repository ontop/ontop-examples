CREATE TEMPORARY TABLE LOCATIONOFNW AS
WITH NW AS ( 
SELECT SID, dFrom, dTo
FROM (SELECT station_id AS SID,
lag(date_time, 1) OVER (PARTITION BY station_id ORDER BY date_time) AS dFrom,
date_time AS dTo,
wind_direction_set_1 AS wd,
wind_speed_set_1 AS ws,
ROW_NUMBER() OVER(PARTITION BY station_id ORDER BY date_time) AS rnm 
FROM tb_newyorkdata2005) AS a 
WHERE (wd > 315 OR wd <= 45) AND ws > 0 AND rnm > 1 AND dTo - dFrom <= interval '1 day'),

C1_NW (Start_ts, End_ts, ts, SID) AS (
SELECT 1, 0 , dFrom, SID
FROM NW 
UNION ALL
SELECT 0, 1, dTo, SID
FROM NW  
),

C2_NW AS (
SELECT 
SUM(Start_ts) OVER (PARTITION BY SID ORDER BY ts, End_ts ROWS UNBOUNDED PRECEDING) AS Crt_Total_ts_1,
SUM(End_ts) OVER (PARTITION BY SID ORDER BY ts, End_ts ROWS UNBOUNDED PRECEDING) AS Crt_Total_ts_2,
SUM(Start_ts) OVER (PARTITION BY SID ORDER BY ts, End_ts ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING) AS Prv_Total_ts_1,
SUM(End_ts) OVER (PARTITION BY SID ORDER BY ts, End_ts ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING) AS Prv_Total_ts_2,
ts,
SID
FROM C1_NW
),

C3_NW AS (
SELECT (Crt_Total_ts_1 - Crt_Total_ts_2) AS Crt_Total_ts, (Prv_Total_ts_1 - Prv_Total_ts_2) AS Prv_Total_ts, ts, SID 
FROM C2_NW
WHERE (Crt_Total_ts_1 - Crt_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) IS NULL
),

C4_NW AS (
SELECT SID, prevTs AS dFrom, ts AS dTo FROM (
SELECT SID, LAG(ts,1) OVER (PARTITION BY SID ORDER BY ts, crt_total_ts) As prevTs,
ts,
Crt_Total_ts
FROM C3_NW) F 
WHERE Crt_Total_ts = 0),

L1_SC AS (
SELECT state, dFrom, dTo FROM C4_NW, tb_metadata WHERE SID = stid
),

L2_SC (Start_ts, End_ts, ts, state) AS (
SELECT 1, 0 , dFrom, state
FROM L1_SC
UNION ALL
SELECT 0, 1, dTo, state
FROM L1_SC
),

L3_SC AS (
SELECT 
SUM(Start_ts) OVER (PARTITION BY state ORDER BY ts, End_ts ROWS UNBOUNDED PRECEDING) AS Crt_Total_ts_1,
SUM(End_ts) OVER (PARTITION BY state ORDER BY ts, End_ts ROWS UNBOUNDED PRECEDING) AS Crt_Total_ts_2,
SUM(Start_ts) OVER (PARTITION BY state ORDER BY ts, End_ts ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING) AS Prv_Total_ts_1,
SUM(End_ts) OVER (PARTITION BY state ORDER BY ts, End_ts ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING) AS Prv_Total_ts_2,
ts,
state
FROM L2_SC
),

L4_SC AS (
SELECT (Crt_Total_ts_1 - Crt_Total_ts_2) AS Crt_Total_ts, (Prv_Total_ts_1 - Prv_Total_ts_2) AS Prv_Total_ts, ts, state 
FROM L3_SC
WHERE (Crt_Total_ts_1 - Crt_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) IS NULL
)

SELECT state, prevTs AS dFrom, ts AS dTo FROM (
SELECT state, LAG(ts,1) OVER (PARTITION BY state ORDER BY ts, crt_total_ts) As prevTs,
ts,
Crt_Total_ts
FROM L4_SC) F 
WHERE Crt_Total_ts = 0;

CREATE TEMPORARY TABLE LOCATIONOFEW AS
WITH EW AS ( 
SELECT SID, dFrom, dTo
FROM (SELECT station_id AS SID,
lag(date_time, 1) OVER (PARTITION BY station_id ORDER BY date_time) AS dFrom,
date_time AS dTo,
wind_direction_set_1 AS wd,
wind_speed_set_1 AS ws,
ROW_NUMBER() OVER(PARTITION BY station_id ORDER BY date_time) AS rnm 
FROM tb_newyorkdata2005) AS a 
WHERE wd > 45 AND wd <= 135 AND ws > 0 AND rnm > 1 AND dTo - dFrom <= interval '1 day'),

C1_EW (Start_ts, End_ts, ts, SID) AS (
SELECT 1, 0 , dFrom, SID
FROM EW 
UNION ALL
SELECT 0, 1, dTo, SID
FROM EW  
),

C2_EW AS (
SELECT 
SUM(Start_ts) OVER (PARTITION BY SID ORDER BY ts, End_ts ROWS UNBOUNDED PRECEDING) AS Crt_Total_ts_1,
SUM(End_ts) OVER (PARTITION BY SID ORDER BY ts, End_ts ROWS UNBOUNDED PRECEDING) AS Crt_Total_ts_2,
SUM(Start_ts) OVER (PARTITION BY SID ORDER BY ts, End_ts ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING) AS Prv_Total_ts_1,
SUM(End_ts) OVER (PARTITION BY SID ORDER BY ts, End_ts ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING) AS Prv_Total_ts_2,
ts,
SID
FROM C1_EW
),

C3_EW AS (
SELECT (Crt_Total_ts_1 - Crt_Total_ts_2) AS Crt_Total_ts, (Prv_Total_ts_1 - Prv_Total_ts_2) AS Prv_Total_ts, ts, SID 
FROM C2_EW
WHERE (Crt_Total_ts_1 - Crt_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) IS NULL
),

C4_EW AS (
SELECT SID, prevTs AS dFrom, ts AS dTo FROM (
SELECT SID, LAG(ts,1) OVER (PARTITION BY SID ORDER BY ts, crt_total_ts) As prevTs,
ts,
Crt_Total_ts
FROM C3_EW) F 
WHERE Crt_Total_ts = 0),
 
L1_SC AS (
SELECT state, dFrom, dTo FROM C4_EW, tb_metadata WHERE SID = stid
),

L2_SC (Start_ts, End_ts, ts, state) AS (
SELECT 1, 0 , dFrom, state
FROM L1_SC
UNION ALL
SELECT 0, 1, dTo, state
FROM L1_SC
),

L3_SC AS (
SELECT 
SUM(Start_ts) OVER (PARTITION BY state ORDER BY ts, End_ts ROWS UNBOUNDED PRECEDING) AS Crt_Total_ts_1,
SUM(End_ts) OVER (PARTITION BY state ORDER BY ts, End_ts ROWS UNBOUNDED PRECEDING) AS Crt_Total_ts_2,
SUM(Start_ts) OVER (PARTITION BY state ORDER BY ts, End_ts ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING) AS Prv_Total_ts_1,
SUM(End_ts) OVER (PARTITION BY state ORDER BY ts, End_ts ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING) AS Prv_Total_ts_2,
ts,
state
FROM L2_SC
),

L4_SC AS (
SELECT (Crt_Total_ts_1 - Crt_Total_ts_2) AS Crt_Total_ts, (Prv_Total_ts_1 - Prv_Total_ts_2) AS Prv_Total_ts, ts, state 
FROM L3_SC
WHERE (Crt_Total_ts_1 - Crt_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) IS NULL
)

SELECT state, prevTs AS dFrom, ts AS dTo FROM (
SELECT state, LAG(ts,1) OVER (PARTITION BY state ORDER BY ts, crt_total_ts) As prevTs,
ts,
Crt_Total_ts
FROM L4_SC) F 
WHERE Crt_Total_ts = 0;
 	

CREATE TEMPORARY TABLE LOCATIONOFSW AS
WITH SW AS ( 
SELECT SID, dFrom, dTo
FROM (SELECT station_id AS SID,
lag(date_time, 1) OVER (PARTITION BY station_id ORDER BY date_time) AS dFrom,
date_time AS dTo,
wind_direction_set_1 AS wd,
wind_speed_set_1 AS ws,
ROW_NUMBER() OVER(PARTITION BY station_id ORDER BY date_time) AS rnm 
FROM tb_newyorkdata2005) AS a 
WHERE wd > 135 AND wd <= 225 AND ws > 0 AND rnm > 1 AND dTo - dFrom <= interval '1 day'),

C1_SW (Start_ts, End_ts, ts, SID) AS (
SELECT 1, 0 , dFrom, SID
FROM SW 
UNION ALL
SELECT 0, 1, dTo, SID
FROM SW  
),

C2_SW AS (
SELECT 
SUM(Start_ts) OVER (PARTITION BY SID ORDER BY ts, End_ts ROWS UNBOUNDED PRECEDING) AS Crt_Total_ts_1,
SUM(End_ts) OVER (PARTITION BY SID ORDER BY ts, End_ts ROWS UNBOUNDED PRECEDING) AS Crt_Total_ts_2,
SUM(Start_ts) OVER (PARTITION BY SID ORDER BY ts, End_ts ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING) AS Prv_Total_ts_1,
SUM(End_ts) OVER (PARTITION BY SID ORDER BY ts, End_ts ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING) AS Prv_Total_ts_2,
ts,
SID
FROM C1_SW
),

C3_SW AS (
SELECT (Crt_Total_ts_1 - Crt_Total_ts_2) AS Crt_Total_ts, (Prv_Total_ts_1 - Prv_Total_ts_2) AS Prv_Total_ts, ts, SID 
FROM C2_SW
WHERE (Crt_Total_ts_1 - Crt_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) IS NULL
),

C4_SW AS (
SELECT SID, prevTs AS dFrom, ts AS dTo FROM (
SELECT SID, LAG(ts,1) OVER (PARTITION BY SID ORDER BY ts, crt_total_ts) As prevTs,
ts,
Crt_Total_ts
FROM C3_SW) F 
WHERE Crt_Total_ts = 0),

L1_SC AS ( 
SELECT state, dFrom, dTo FROM C4_SW, tb_metadata WHERE SID = stid
),

L2_SC (Start_ts, End_ts, ts, state) AS (
SELECT 1, 0 , dFrom, state
FROM L1_SC
UNION ALL
SELECT 0, 1, dTo, state
FROM L1_SC
),

L3_SC AS (
SELECT 
SUM(Start_ts) OVER (PARTITION BY state ORDER BY ts, End_ts ROWS UNBOUNDED PRECEDING) AS Crt_Total_ts_1,
SUM(End_ts) OVER (PARTITION BY state ORDER BY ts, End_ts ROWS UNBOUNDED PRECEDING) AS Crt_Total_ts_2,
SUM(Start_ts) OVER (PARTITION BY state ORDER BY ts, End_ts ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING) AS Prv_Total_ts_1,
SUM(End_ts) OVER (PARTITION BY state ORDER BY ts, End_ts ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING) AS Prv_Total_ts_2,
ts,
state
FROM L2_SC
),

L4_SC AS (
SELECT (Crt_Total_ts_1 - Crt_Total_ts_2) AS Crt_Total_ts, (Prv_Total_ts_1 - Prv_Total_ts_2) AS Prv_Total_ts, ts, state 
FROM L3_SC
WHERE (Crt_Total_ts_1 - Crt_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) IS NULL
)

SELECT state, prevTs AS dFrom, ts AS dTo FROM (
SELECT state, LAG(ts,1) OVER (PARTITION BY state ORDER BY ts, crt_total_ts) As prevTs,
ts,
Crt_Total_ts
FROM L4_SC) F 
WHERE Crt_Total_ts = 0;


CREATE TEMPORARY TABLE LOCATIONOFWW AS
WITH WW AS ( 
SELECT SID, dFrom, dTo
FROM (SELECT station_id AS SID,
lag(date_time, 1) OVER (PARTITION BY station_id ORDER BY date_time) AS dFrom,
date_time AS dTo,
wind_direction_set_1 AS wd,
wind_speed_set_1 AS ws,
ROW_NUMBER() OVER(PARTITION BY station_id ORDER BY date_time) AS rnm 
FROM tb_newyorkdata2005) AS a 
WHERE wd > 225 AND wd <= 315 AND ws > 0 AND rnm > 1 AND dTo - dFrom <= interval '1 day'),

C1_WW (Start_ts, End_ts, ts, SID) AS (
SELECT 1, 0 , dFrom, SID
FROM WW 
UNION ALL
SELECT 0, 1, dTo, SID
FROM WW  
),

C2_WW AS (
SELECT 
SUM(Start_ts) OVER (PARTITION BY SID ORDER BY ts, End_ts ROWS UNBOUNDED PRECEDING) AS Crt_Total_ts_1,
SUM(End_ts) OVER (PARTITION BY SID ORDER BY ts, End_ts ROWS UNBOUNDED PRECEDING) AS Crt_Total_ts_2,
SUM(Start_ts) OVER (PARTITION BY SID ORDER BY ts, End_ts ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING) AS Prv_Total_ts_1,
SUM(End_ts) OVER (PARTITION BY SID ORDER BY ts, End_ts ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING) AS Prv_Total_ts_2,
ts,
SID
FROM C1_WW
),

C3_WW AS (
SELECT (Crt_Total_ts_1 - Crt_Total_ts_2) AS Crt_Total_ts, (Prv_Total_ts_1 - Prv_Total_ts_2) AS Prv_Total_ts, ts, SID 
FROM C2_WW
WHERE (Crt_Total_ts_1 - Crt_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) IS NULL
),

C4_WW AS (
SELECT SID, prevTs AS dFrom, ts AS dTo FROM (
SELECT SID, LAG(ts,1) OVER (PARTITION BY SID ORDER BY ts, crt_total_ts) As prevTs,
ts,
Crt_Total_ts
FROM C3_WW) F 
WHERE Crt_Total_ts = 0),
 
L1_SC AS (
SELECT state, dFrom, dTo FROM C4_WW, tb_metadata WHERE SID = stid
),

L2_SC (Start_ts, End_ts, ts, state) AS (
SELECT 1, 0 , dFrom, state
FROM L1_SC
UNION ALL
SELECT 0, 1, dTo, state
FROM L1_SC
),

L3_SC AS (
SELECT 
SUM(Start_ts) OVER (PARTITION BY state ORDER BY ts, End_ts ROWS UNBOUNDED PRECEDING) AS Crt_Total_ts_1,
SUM(End_ts) OVER (PARTITION BY state ORDER BY ts, End_ts ROWS UNBOUNDED PRECEDING) AS Crt_Total_ts_2,
SUM(Start_ts) OVER (PARTITION BY state ORDER BY ts, End_ts ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING) AS Prv_Total_ts_1,
SUM(End_ts) OVER (PARTITION BY state ORDER BY ts, End_ts ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING) AS Prv_Total_ts_2,
ts,
state
FROM L2_SC
),

L4_SC AS (
SELECT (Crt_Total_ts_1 - Crt_Total_ts_2) AS Crt_Total_ts, (Prv_Total_ts_1 - Prv_Total_ts_2) AS Prv_Total_ts, ts, state 
FROM L3_SC
WHERE (Crt_Total_ts_1 - Crt_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) IS NULL
)

SELECT state, prevTs AS dFrom, ts AS dTo FROM (
SELECT state, LAG(ts,1) OVER (PARTITION BY state ORDER BY ts, crt_total_ts) As prevTs,
ts,
Crt_Total_ts
FROM L4_SC) F 
WHERE Crt_Total_ts = 0;


CREATE INDEX LOCATIONOFEW_IDX_FROM_TO ON LOCATIONOFEW (dFrom,dTo);
CREATE INDEX LOCATIONOFWW_IDX_FROM_TO ON LOCATIONOFWW (dFrom,dTo);

CREATE TEMPORARY TABLE F1 AS
SELECT LOCATIONOFEW.state AS x_state_1,
CASE 
WHEN LOCATIONOFEW.dFrom > LOCATIONOFWW.dFrom AND LOCATIONOFWW.dTo > LOCATIONOFEW.dFrom THEN LOCATIONOFEW.dFrom
WHEN LOCATIONOFWW.dFrom > LOCATIONOFEW.dFrom AND LOCATIONOFEW.dTo > LOCATIONOFWW.dFrom THEN LOCATIONOFWW.dFrom
WHEN LOCATIONOFEW.dFrom = LOCATIONOFWW.dFrom THEN LOCATIONOFEW.dFrom
END AS x_from_1,
CASE 
WHEN LOCATIONOFEW.dTo < LOCATIONOFWW.dTo AND LOCATIONOFEW.dTo > LOCATIONOFWW.dFrom THEN LOCATIONOFEW.dTo
WHEN LOCATIONOFWW.dTo < LOCATIONOFEW.dTo AND LOCATIONOFWW.dTo > LOCATIONOFEW.dFrom THEN LOCATIONOFWW.dTo
WHEN LOCATIONOFEW.dTo = LOCATIONOFWW.dTo THEN LOCATIONOFEW.dTo
END AS x_to_1
FROM LOCATIONOFEW, LOCATIONOFWW
WHERE LOCATIONOFEW.state = LOCATIONOFWW.state AND 
((LOCATIONOFEW.dFrom > LOCATIONOFWW.dFrom AND LOCATIONOFWW.dTo > LOCATIONOFEW.dFrom) OR (LOCATIONOFWW.dFrom > LOCATIONOFEW.dFrom AND LOCATIONOFEW.dTo > LOCATIONOFWW.dFrom) OR (LOCATIONOFEW.dFrom = LOCATIONOFWW.dFrom)) AND
((LOCATIONOFEW.dTo < LOCATIONOFWW.dTo AND LOCATIONOFEW.dTo > LOCATIONOFWW.dFrom) OR (LOCATIONOFWW.dTo < LOCATIONOFEW.dTo AND LOCATIONOFWW.dTo > LOCATIONOFEW.dFrom) OR (LOCATIONOFEW.dTo = LOCATIONOFWW.dTo));

CREATE INDEX LOCATIONOFNW_IDX_FROM_TO ON LOCATIONOFNW (dFrom,dTo);
CREATE INDEX LOCATIONOFSW_IDX_FROM_TO ON LOCATIONOFSW (dFrom,dTo);

CREATE TEMPORARY TABLE F2 AS
SELECT LOCATIONOFNW.state AS x_state_2,
CASE 
WHEN LOCATIONOFNW.dFrom > LOCATIONOFSW.dFrom AND LOCATIONOFSW.dTo > LOCATIONOFNW.dFrom THEN LOCATIONOFNW.dFrom
WHEN LOCATIONOFSW.dFrom > LOCATIONOFNW.dFrom AND LOCATIONOFNW.dTo > LOCATIONOFSW.dFrom THEN LOCATIONOFSW.dFrom
WHEN LOCATIONOFNW.dFrom = LOCATIONOFSW.dFrom THEN LOCATIONOFNW.dFrom
END AS x_from_2,
CASE 
WHEN LOCATIONOFNW.dTo < LOCATIONOFSW.dTo AND LOCATIONOFNW.dTo > LOCATIONOFSW.dFrom THEN LOCATIONOFNW.dTo
WHEN LOCATIONOFSW.dTo < LOCATIONOFNW.dTo AND LOCATIONOFSW.dTo > LOCATIONOFNW.dFrom THEN LOCATIONOFSW.dTo
WHEN LOCATIONOFNW.dTo = LOCATIONOFSW.dTo THEN LOCATIONOFNW.dTo
END AS x_to_2
FROM LOCATIONOFNW, LOCATIONOFSW
WHERE LOCATIONOFNW.state = LOCATIONOFSW.state AND 
((LOCATIONOFNW.dFrom > LOCATIONOFSW.dFrom AND LOCATIONOFSW.dTo > LOCATIONOFNW.dFrom) OR (LOCATIONOFSW.dFrom > LOCATIONOFNW.dFrom AND LOCATIONOFNW.dTo > LOCATIONOFSW.dFrom) OR (LOCATIONOFNW.dFrom = LOCATIONOFSW.dFrom)) AND
((LOCATIONOFNW.dTo < LOCATIONOFSW.dTo AND LOCATIONOFNW.dTo > LOCATIONOFSW.dFrom) OR (LOCATIONOFSW.dTo < LOCATIONOFNW.dTo AND LOCATIONOFSW.dTo > LOCATIONOFNW.dFrom) OR (LOCATIONOFNW.dTo = LOCATIONOFSW.dTo));

CREATE INDEX F1_IDX_FROM_TO ON F1 (x_from_1,x_to_1);
CREATE INDEX F2_IDX_FROM_TO ON F2 (x_from_2,x_to_2);

SELECT x_state_1 AS x_state_3,
CASE
WHEN x_from_1 > x_from_2 AND x_to_2 > x_from_1 THEN x_from_1
WHEN x_from_2 > x_from_1 AND x_to_1 > x_from_2 THEN x_from_2
WHEN x_from_1 = x_from_2 THEN x_from_1
END AS x_from_3,
CASE 
WHEN x_to_1 < x_to_2 AND x_to_1 > x_from_2 THEN x_to_1
WHEN x_to_2 < x_to_1 AND x_to_2 > x_from_1 THEN x_to_2
WHEN x_to_1 = x_to_2 THEN x_to_1
END AS x_to_3
FROM F1, F2
WHERE x_state_1 = x_state_2 AND 
((x_from_1 > x_from_2 AND x_to_2 > x_from_1) OR (x_from_2 > x_from_1 AND x_to_1 > x_from_2) OR (x_from_1 = x_from_2))
AND 
((x_to_1 < x_to_2 AND x_to_1 > x_from_2) OR (x_to_2 < x_to_1 AND x_to_2 > x_from_1) OR (x_to_1 = x_to_2));