CREATE TEMPORARY TABLE DIAMOND_CD1500_1 AS
WITH C0_CD1500_1 AS (
SELECT * FROM  tb_sensor_unified WHERE maxrotorspeed IS NOT NULL
),

C1_CD1500_1 AS (
SELECT dFrom, dTo
FROM (
SELECT datetime as dFrom,
LEAD(datetime, 1) OVER (ORDER BY  datetime) AS dTo,
maxrotorspeed AS currRs,
LEAD(maxrotorspeed, 1) OVER (ORDER BY  datetime) AS nextRs
FROM C0_CD1500_1) F
WHERE currRs >= 1500 AND dTo IS NOT NULL AND dTo - dFrom <= interval '1 day'
),

C2_CD1500_1 (Start_ts, End_ts, ts) AS (
SELECT 1, 0 , dFrom
FROM C1_CD1500_1 
UNION ALL
SELECT 0, 1, dTo
FROM C1_CD1500_1  
),

C3_CD1500_1 AS (
SELECT 
SUM(Start_ts) OVER (ORDER BY ts, End_ts ROWS UNBOUNDED PRECEDING) AS Crt_Total_ts_1,
SUM(End_ts) OVER (ORDER BY ts, End_ts ROWS UNBOUNDED PRECEDING) AS Crt_Total_ts_2,
SUM(Start_ts) OVER (ORDER BY ts, End_ts ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING) AS Prv_Total_ts_1,
SUM(End_ts) OVER (ORDER BY ts, End_ts ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING) AS Prv_Total_ts_2,
ts
FROM C2_CD1500_1
),

C4_CD1500_1 AS (
SELECT (Crt_Total_ts_1 - Crt_Total_ts_2) AS Crt_Total_ts, (Prv_Total_ts_1 - Prv_Total_ts_2) AS Prv_Total_ts, ts
FROM C3_CD1500_1
WHERE (Crt_Total_ts_1 - Crt_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) IS NULL
),

CD1500_1 AS (
SELECT (prevTs + interval '30 seconds') AS dFrom, ts AS dTo FROM (
SELECT LAG(ts,1) OVER (ORDER BY ts, crt_total_ts) As prevTs,
ts,
Crt_Total_ts
FROM C4_CD1500_1) F 
WHERE Crt_Total_ts = 0 AND ts - prevTs >= interval '30 seconds')

SELECT (dFrom + interval '30 seconds') AS dFrom, (dTo + interval '8 minutes') AS dTo FROM CD1500_1;

CREATE TEMPORARY TABLE CD1500_2 AS 
WITH C0_CD1500_2 AS (
SELECT * FROM  tb_sensor_unified WHERE maxrotorspeed IS NOT NULL
),

C1_CD1500_2 AS (
SELECT dFrom, dTo
FROM (
SELECT datetime as dFrom,
LEAD(datetime, 1) OVER (ORDER BY  datetime) AS dTo,
maxrotorspeed AS currRs,
LEAD(maxrotorspeed, 1) OVER (ORDER BY  datetime) AS nextRs
FROM C0_CD1500_2) F
WHERE currRs <= 200 AND dTo IS NOT NULL AND dTo - dFrom <= interval '1 day'
),

C2_CD1500_2 (Start_ts, End_ts, ts) AS (
SELECT 1, 0 , dFrom
FROM C1_CD1500_2 
UNION ALL
SELECT 0, 1, dTo
FROM C1_CD1500_2  
),

C3_CD1500_2 AS (
SELECT 
SUM(Start_ts) OVER (ORDER BY ts, End_ts ROWS UNBOUNDED PRECEDING) AS Crt_Total_ts_1,
SUM(End_ts) OVER (ORDER BY ts, End_ts ROWS UNBOUNDED PRECEDING) AS Crt_Total_ts_2,
SUM(Start_ts) OVER (ORDER BY ts, End_ts ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING) AS Prv_Total_ts_1,
SUM(End_ts) OVER (ORDER BY ts, End_ts ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING) AS Prv_Total_ts_2,
ts
FROM C2_CD1500_2
),

C4_CD1500_2 AS (
SELECT (Crt_Total_ts_1 - Crt_Total_ts_2) AS Crt_Total_ts, (Prv_Total_ts_1 - Prv_Total_ts_2) AS Prv_Total_ts, ts
FROM C3_CD1500_2
WHERE (Crt_Total_ts_1 - Crt_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) IS NULL
)

SELECT (prevTs + interval '30 seconds') AS dFrom, ts AS dTo FROM (
SELECT LAG(ts,1) OVER (ORDER BY ts, crt_total_ts) As prevTs,
ts,
Crt_Total_ts
FROM C4_CD1500_2) F 
WHERE Crt_Total_ts = 0 AND ts - prevTs >= interval '30 seconds';

CREATE INDEX DIAMOND_CD1500_1_IDX_FROM ON DIAMOND_CD1500_1 (dFrom);
CREATE INDEX DIAMOND_CD1500_1_IDX_TO ON DIAMOND_CD1500_1 (dTo);
CREATE INDEX DIAMOND_CD1500_1_IDX_FROM_TO ON DIAMOND_CD1500_1 (dFrom,dTo);
CREATE INDEX CD1500_2_IDX_FROM ON CD1500_2 (dFrom);
CREATE INDEX CD1500_2_IDX_TO ON CD1500_2 (dTo);
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

CREATE TEMPORARY TABLE DIAMOND_CD6600_1 AS
WITH C0_CD6600_1 AS (
SELECT * FROM  tb_sensor_unified WHERE maxrotorspeed IS NOT NULL
),

C1_CD6600_1 AS (
SELECT dFrom, dTo
FROM (
SELECT datetime as dFrom,
LEAD(datetime, 1) OVER (ORDER BY  datetime) AS dTo,
maxrotorspeed AS currRs,
LEAD(maxrotorspeed, 1) OVER (ORDER BY  datetime) AS nextRs
FROM C0_CD6600_1) F
WHERE currRs >= 6600 AND dTo IS NOT NULL AND dTo - dFrom <= interval '1 day'
),

C2_CD6600_1 (Start_ts, End_ts, ts) AS (
SELECT 1, 0 , dFrom
FROM C1_CD6600_1 
UNION ALL
SELECT 0, 1, dTo
FROM C1_CD6600_1  
),

C3_CD6600_1 AS (
SELECT 
SUM(Start_ts) OVER (ORDER BY ts, End_ts ROWS UNBOUNDED PRECEDING) AS Crt_Total_ts_1,
SUM(End_ts) OVER (ORDER BY ts, End_ts ROWS UNBOUNDED PRECEDING) AS Crt_Total_ts_2,
SUM(Start_ts) OVER (ORDER BY ts, End_ts ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING) AS Prv_Total_ts_1,
SUM(End_ts) OVER (ORDER BY ts, End_ts ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING) AS Prv_Total_ts_2,
ts
FROM C2_CD6600_1
),

C4_CD6600_1 AS (
SELECT (Crt_Total_ts_1 - Crt_Total_ts_2) AS Crt_Total_ts, (Prv_Total_ts_1 - Prv_Total_ts_2) AS Prv_Total_ts, ts
FROM C3_CD6600_1
WHERE (Crt_Total_ts_1 - Crt_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) IS NULL
),

CD6600_1 AS (
SELECT (prevTs + interval '30 seconds') AS dFrom, ts AS dTo FROM (
SELECT LAG(ts,1) OVER (ORDER BY ts, crt_total_ts) As prevTs,
ts,
Crt_Total_ts
FROM C4_CD6600_1) F 
WHERE Crt_Total_ts = 0 AND ts - prevTs >= interval '30 seconds')

SELECT (dFrom + interval '30 seconds') AS dFrom, (dTo + interval '150 seconds') AS dTo FROM CD6600_1;

CREATE TEMPORARY TABLE CD6600_2 AS
WITH C0_CD6600_2 AS (
SELECT * FROM  tb_sensor_unified WHERE maxrotorspeed IS NOT NULL
),

C1_CD6600_2 AS (
SELECT dFrom, dTo
FROM (
SELECT datetime as dFrom,
LEAD(datetime, 1) OVER (ORDER BY  datetime) AS dTo,
maxrotorspeed AS currRs,
LEAD(maxrotorspeed, 1) OVER (ORDER BY  datetime) AS nextRs
FROM C0_CD6600_2) F
WHERE currRs <= 1500 AND dTo IS NOT NULL AND dTo - dFrom <= interval '1 day'
),

C2_CD6600_2 (Start_ts, End_ts, ts) AS (
SELECT 1, 0 , dFrom
FROM C1_CD6600_2 
UNION ALL
SELECT 0, 1, dTo
FROM C1_CD6600_2  
),

C3_CD6600_2 AS (
SELECT 
SUM(Start_ts) OVER (ORDER BY ts, End_ts ROWS UNBOUNDED PRECEDING) AS Crt_Total_ts_1,
SUM(End_ts) OVER (ORDER BY ts, End_ts ROWS UNBOUNDED PRECEDING) AS Crt_Total_ts_2,
SUM(Start_ts) OVER (ORDER BY ts, End_ts ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING) AS Prv_Total_ts_1,
SUM(End_ts) OVER (ORDER BY ts, End_ts ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING) AS Prv_Total_ts_2,
ts
FROM C2_CD6600_2
),

C4_CD6600_2 AS (
SELECT (Crt_Total_ts_1 - Crt_Total_ts_2) AS Crt_Total_ts, (Prv_Total_ts_1 - Prv_Total_ts_2) AS Prv_Total_ts, ts
FROM C3_CD6600_2
WHERE (Crt_Total_ts_1 - Crt_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) IS NULL
)

SELECT (prevTs + interval '30 seconds') AS dFrom, ts AS dTo FROM (
SELECT LAG(ts,1) OVER (ORDER BY ts, crt_total_ts) As prevTs,
ts,
Crt_Total_ts
FROM C4_CD6600_2) F 
WHERE Crt_Total_ts = 0 AND ts - prevTs >= interval '30 seconds';

CREATE INDEX DIAMOND_CD6600_1_IDX_FROM ON DIAMOND_CD6600_1 (dFrom);
CREATE INDEX DIAMOND_CD6600_1_IDX_TO ON DIAMOND_CD6600_1 (dTo);
CREATE INDEX DIAMOND_CD6600_1_IDX_FROM_TO ON DIAMOND_CD6600_1 (dFrom,dTo);
CREATE INDEX CD6600_2_IDX_FROM ON CD6600_2 (dFrom);
CREATE INDEX CD6600_2_IDX_TO ON CD6600_2 (dTo);
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

CREATE INDEX DIAMOND_D_IDX_FROM ON DIAMOND_D (dFrom);
CREATE INDEX DIAMOND_D_IDX_TO ON DIAMOND_D (dTo);
CREATE INDEX DIAMOND_D_IDX_FROM_TO ON DIAMOND_D (dFrom,dTo);
CREATE INDEX C_IDX_FROM ON C (dFrom);
CREATE INDEX C_IDX_TO ON C (dTo);
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

CREATE TEMPORARY TABLE B AS
WITH C0_MF AS (
SELECT * FROM  tb_sensor_unified WHERE mainflame IS NOT NULL
),

C1_MF AS (
SELECT dFrom, dTo, currMf, nextMf
FROM (
SELECT datetime as dFrom,
LEAD(datetime, 1) OVER (ORDER BY  datetime) AS dTo,
mainflame AS currMf,
LEAD(mainflame, 1) OVER (ORDER BY  datetime) AS nextMf
FROM C0_MF) F
WHERE currMF <= 0.1 AND dTo IS NOT NULL AND dTo - dFrom <= interval '1 day'
),

C2_MF (Start_ts, End_ts, ts) AS (
SELECT 1, 0 , dFrom
FROM C1_MF 
UNION ALL
SELECT 0, 1, dTo
FROM C1_MF  
),

C3_MF AS (
SELECT 
SUM(Start_ts) OVER (ORDER BY ts, End_ts ROWS UNBOUNDED PRECEDING) AS Crt_Total_ts_1,
SUM(End_ts) OVER (ORDER BY ts, End_ts ROWS UNBOUNDED PRECEDING) AS Crt_Total_ts_2,
SUM(Start_ts) OVER (ORDER BY ts, End_ts ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING) AS Prv_Total_ts_1,
SUM(End_ts) OVER (ORDER BY ts, End_ts ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING) AS Prv_Total_ts_2,
ts
FROM C2_MF
),

C4_MF AS (
SELECT (Crt_Total_ts_1 - Crt_Total_ts_2) AS Crt_Total_ts, (Prv_Total_ts_1 - Prv_Total_ts_2) AS Prv_Total_ts, ts
FROM C3_MF
WHERE (Crt_Total_ts_1 - Crt_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) = 0 OR (Prv_Total_ts_1 - Prv_Total_ts_2) IS NULL
)

SELECT (prevTs + interval '10 seconds') AS dFrom, ts AS dTo FROM (
SELECT LAG(ts,1) OVER (ORDER BY ts, crt_total_ts) As prevTs,
ts,
Crt_Total_ts
FROM C4_MF) F 
WHERE Crt_Total_ts = 0 AND ts - prevTs >= interval '10 seconds';

CREATE INDEX DIAMOND_E_IDX_FROM ON DIAMOND_E (dFrom);
CREATE INDEX DIAMOND_E_IDX_TO ON DIAMOND_E (dTo);
CREATE INDEX DIAMOND_E_IDX_FROM_TO ON DIAMOND_E (dFrom,dTo);
CREATE INDEX B_IDX_FROM ON B (dFrom);
CREATE INDEX B_IDX_TO ON B (dTo);
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

CREATE TEMPORARY TABLE A AS
WITH C0_AP AS (
SELECT * FROM  tb_sensor_unified WHERE activepower IS NOT NULL
),

C1_AP AS (
SELECT dFrom, dTo, currAp, nextAp 
FROM (
SELECT datetime as dFrom,
LEAD(datetime, 1) OVER (ORDER BY  datetime) AS dTo,
activepower AS currAp,
LEAD(activepower, 1) OVER (ORDER BY  datetime) AS nextAp
FROM C0_AP) F
WHERE currAp <= 0.15 AND dTo IS NOT NULL AND dTo - dFrom <= interval '1 day'
),

C2_AP AS (
SELECT dFrom, dTo, sign(sign(EXTRACT(EPOCH FROM  prevdTo - dFrom))+1) AS prevFlag, sign(sign(EXTRACT(EPOCH FROM  dTo - nextdFrom))+1) AS nextFlag
FROM (SELECT dFrom, dTo,
LAG(dTo, 1) OVER (ORDER BY  dFrom) AS prevdTo,
LEAD(dFrom, 1) OVER (ORDER BY  dFrom) AS nextdFrom
FROM C1_AP) x 
),

C3_AP AS(
SELECT * FROM C2_AP
WHERE (prevFlag = 0 AND nextFlag = 1) OR (prevFlag = 1 AND nextFlag = 0) OR (prevFlag IS NULL AND nextFlag = 1) OR (prevFlag = 1 AND nextFlag IS NULL)
),

C4_AP AS (
SELECT dfrom, LEAD(dto, 1) OVER (ORDER BY dfrom) AS dto,
row_number() OVER (ORDER BY dfrom) AS rn FROM C3_AP)

SELECT (dFrom + interval '30 seconds') as dFrom, dTo FROM C2_AP WHERE ((prevFlag IS NULL AND nextFlag IS NULL) OR (prevFlag = 0 AND nextFlag = 0)) AND dTo - dFrom >= interval '30 seconds'
UNION ALL 
SELECT (dFrom + interval '30 seconds') as dFrom, dTo FROM C4_AP WHERE rn % 2 = 1 AND dTo - dFrom >= interval '30 seconds';

CREATE INDEX DIAMOND_F_IDX_FROM ON DIAMOND_F (dFrom);
CREATE INDEX DIAMOND_F_IDX_TO ON DIAMOND_F (dTo);
CREATE INDEX DIAMOND_F_IDX_FROM_TO ON DIAMOND_F (dFrom,dTo);
CREATE INDEX A_IDX_FROM ON A (dFrom);
CREATE INDEX A_IDX_TO ON A (dTo);
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