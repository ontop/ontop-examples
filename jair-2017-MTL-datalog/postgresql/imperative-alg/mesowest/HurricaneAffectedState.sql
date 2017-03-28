CREATE TEMPORARY TABLE HFW AS 
SELECT SID, dFrom, dTo
FROM (SELECT station_id AS SID,
lag(date_time, 1) OVER (PARTITION BY station_id ORDER BY date_time) AS dFrom,
date_time AS dTo,
lag(wind_speed_set_1, 1) OVER (PARTITION BY station_id ORDER BY date_time) AS prevWSpeed,
wind_speed_set_1 AS wSpeed,
ROW_NUMBER() OVER(PARTITION BY station_id ORDER BY date_time) AS rnm 
FROM tb_newyorkdata2005) AS a 
WHERE wSpeed >= 118 AND rnm > 1 AND dTo - dFrom <= interval '1 day';

CREATE TEMPORARY TABLE HURRICANE AS 
SELECT SID, (dFrom + interval '1 hour') AS dFrom, dTo 
FROM CoalesceInterval('HFW', 'SID', 'dFrom', 'dTo')
WHERE dTo - dFrom  >= interval '1 hour';

CREATE TEMPORARY TABLE LOCATIONOFHURRICANE AS 
SELECT state, dFrom, dTo FROM tb_metadata, HURRICANE WHERE stid = SID
ORDER BY (state, dFrom);

SELECT * FROM CoalesceInterval('LOCATIONOFHURRICANE', 'state', 'dFrom', 'dTo');