SELECT * FROM (SELECT *
FROM (
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2"
FROM
"public"."t4_1m" qview1,
"public"."t5_1m" qview2,
"public"."t6_1m" qview3
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2"
FROM
"public"."t4_1m" qview1,
"public"."t5_1m" qview2,
"public"."t3_1m" qview3
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2"
FROM
"public"."t4_1m" qview1,
"public"."t2_1m" qview2,
"public"."t6_1m" qview3
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2"
FROM
"public"."t4_1m" qview1,
"public"."t2_1m" qview2,
"public"."t3_1m" qview3
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t5_1m" qview2,
"public"."t6_1m" qview3
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t5_1m" qview2,
"public"."t3_1m" qview3
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t2_1m" qview2,
"public"."t6_1m" qview3
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t2_1m" qview2,
"public"."t3_1m" qview3
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL
) SUB_QVIEW

) f_1
