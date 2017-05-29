SELECT * FROM (SELECT *
FROM (
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t17_1m" qview1,
"public"."t18_1m" qview2,
"public"."t19_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t17_1m" qview1,
"public"."t18_1m" qview2,
"public"."t19_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t17_1m" qview1,
"public"."t18_1m" qview2,
"public"."t19_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t17_1m" qview1,
"public"."t18_1m" qview2,
"public"."t19_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t17_1m" qview1,
"public"."t18_1m" qview2,
"public"."t19_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t17_1m" qview1,
"public"."t18_1m" qview2,
"public"."t15_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t17_1m" qview1,
"public"."t18_1m" qview2,
"public"."t15_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t17_1m" qview1,
"public"."t18_1m" qview2,
"public"."t15_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t17_1m" qview1,
"public"."t18_1m" qview2,
"public"."t15_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t17_1m" qview1,
"public"."t18_1m" qview2,
"public"."t15_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t17_1m" qview1,
"public"."t18_1m" qview2,
"public"."t11_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t17_1m" qview1,
"public"."t18_1m" qview2,
"public"."t11_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t17_1m" qview1,
"public"."t18_1m" qview2,
"public"."t11_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t17_1m" qview1,
"public"."t18_1m" qview2,
"public"."t11_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t17_1m" qview1,
"public"."t18_1m" qview2,
"public"."t11_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t17_1m" qview1,
"public"."t18_1m" qview2,
"public"."t7_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t17_1m" qview1,
"public"."t18_1m" qview2,
"public"."t7_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t17_1m" qview1,
"public"."t18_1m" qview2,
"public"."t7_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t17_1m" qview1,
"public"."t18_1m" qview2,
"public"."t7_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t17_1m" qview1,
"public"."t18_1m" qview2,
"public"."t7_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t17_1m" qview1,
"public"."t18_1m" qview2,
"public"."t3_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t17_1m" qview1,
"public"."t18_1m" qview2,
"public"."t3_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t17_1m" qview1,
"public"."t18_1m" qview2,
"public"."t3_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t17_1m" qview1,
"public"."t18_1m" qview2,
"public"."t3_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t17_1m" qview1,
"public"."t18_1m" qview2,
"public"."t3_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t17_1m" qview1,
"public"."t14_1m" qview2,
"public"."t19_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t17_1m" qview1,
"public"."t14_1m" qview2,
"public"."t19_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t17_1m" qview1,
"public"."t14_1m" qview2,
"public"."t19_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t17_1m" qview1,
"public"."t14_1m" qview2,
"public"."t19_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t17_1m" qview1,
"public"."t14_1m" qview2,
"public"."t19_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t17_1m" qview1,
"public"."t14_1m" qview2,
"public"."t15_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t17_1m" qview1,
"public"."t14_1m" qview2,
"public"."t15_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t17_1m" qview1,
"public"."t14_1m" qview2,
"public"."t15_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t17_1m" qview1,
"public"."t14_1m" qview2,
"public"."t15_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t17_1m" qview1,
"public"."t14_1m" qview2,
"public"."t15_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t17_1m" qview1,
"public"."t14_1m" qview2,
"public"."t11_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t17_1m" qview1,
"public"."t14_1m" qview2,
"public"."t11_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t17_1m" qview1,
"public"."t14_1m" qview2,
"public"."t11_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t17_1m" qview1,
"public"."t14_1m" qview2,
"public"."t11_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t17_1m" qview1,
"public"."t14_1m" qview2,
"public"."t11_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t17_1m" qview1,
"public"."t14_1m" qview2,
"public"."t7_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t17_1m" qview1,
"public"."t14_1m" qview2,
"public"."t7_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t17_1m" qview1,
"public"."t14_1m" qview2,
"public"."t7_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t17_1m" qview1,
"public"."t14_1m" qview2,
"public"."t7_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t17_1m" qview1,
"public"."t14_1m" qview2,
"public"."t7_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t17_1m" qview1,
"public"."t14_1m" qview2,
"public"."t3_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t17_1m" qview1,
"public"."t14_1m" qview2,
"public"."t3_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t17_1m" qview1,
"public"."t14_1m" qview2,
"public"."t3_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t17_1m" qview1,
"public"."t14_1m" qview2,
"public"."t3_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t17_1m" qview1,
"public"."t14_1m" qview2,
"public"."t3_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t17_1m" qview1,
"public"."t10_1m" qview2,
"public"."t19_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t17_1m" qview1,
"public"."t10_1m" qview2,
"public"."t19_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t17_1m" qview1,
"public"."t10_1m" qview2,
"public"."t19_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t17_1m" qview1,
"public"."t10_1m" qview2,
"public"."t19_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t17_1m" qview1,
"public"."t10_1m" qview2,
"public"."t19_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t17_1m" qview1,
"public"."t10_1m" qview2,
"public"."t15_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t17_1m" qview1,
"public"."t10_1m" qview2,
"public"."t15_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t17_1m" qview1,
"public"."t10_1m" qview2,
"public"."t15_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t17_1m" qview1,
"public"."t10_1m" qview2,
"public"."t15_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t17_1m" qview1,
"public"."t10_1m" qview2,
"public"."t15_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t17_1m" qview1,
"public"."t10_1m" qview2,
"public"."t11_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t17_1m" qview1,
"public"."t10_1m" qview2,
"public"."t11_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t17_1m" qview1,
"public"."t10_1m" qview2,
"public"."t11_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t17_1m" qview1,
"public"."t10_1m" qview2,
"public"."t11_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t17_1m" qview1,
"public"."t10_1m" qview2,
"public"."t11_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t17_1m" qview1,
"public"."t10_1m" qview2,
"public"."t7_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t17_1m" qview1,
"public"."t10_1m" qview2,
"public"."t7_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t17_1m" qview1,
"public"."t10_1m" qview2,
"public"."t7_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t17_1m" qview1,
"public"."t10_1m" qview2,
"public"."t7_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t17_1m" qview1,
"public"."t10_1m" qview2,
"public"."t7_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t17_1m" qview1,
"public"."t10_1m" qview2,
"public"."t3_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t17_1m" qview1,
"public"."t10_1m" qview2,
"public"."t3_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t17_1m" qview1,
"public"."t10_1m" qview2,
"public"."t3_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t17_1m" qview1,
"public"."t10_1m" qview2,
"public"."t3_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t17_1m" qview1,
"public"."t10_1m" qview2,
"public"."t3_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t17_1m" qview1,
"public"."t6_1m" qview2,
"public"."t19_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t17_1m" qview1,
"public"."t6_1m" qview2,
"public"."t19_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t17_1m" qview1,
"public"."t6_1m" qview2,
"public"."t19_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t17_1m" qview1,
"public"."t6_1m" qview2,
"public"."t19_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t17_1m" qview1,
"public"."t6_1m" qview2,
"public"."t19_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t17_1m" qview1,
"public"."t6_1m" qview2,
"public"."t15_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t17_1m" qview1,
"public"."t6_1m" qview2,
"public"."t15_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t17_1m" qview1,
"public"."t6_1m" qview2,
"public"."t15_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t17_1m" qview1,
"public"."t6_1m" qview2,
"public"."t15_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t17_1m" qview1,
"public"."t6_1m" qview2,
"public"."t15_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t17_1m" qview1,
"public"."t6_1m" qview2,
"public"."t11_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t17_1m" qview1,
"public"."t6_1m" qview2,
"public"."t11_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t17_1m" qview1,
"public"."t6_1m" qview2,
"public"."t11_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t17_1m" qview1,
"public"."t6_1m" qview2,
"public"."t11_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t17_1m" qview1,
"public"."t6_1m" qview2,
"public"."t11_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t17_1m" qview1,
"public"."t6_1m" qview2,
"public"."t7_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t17_1m" qview1,
"public"."t6_1m" qview2,
"public"."t7_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t17_1m" qview1,
"public"."t6_1m" qview2,
"public"."t7_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t17_1m" qview1,
"public"."t6_1m" qview2,
"public"."t7_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t17_1m" qview1,
"public"."t6_1m" qview2,
"public"."t7_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t17_1m" qview1,
"public"."t6_1m" qview2,
"public"."t3_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t17_1m" qview1,
"public"."t6_1m" qview2,
"public"."t3_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t17_1m" qview1,
"public"."t6_1m" qview2,
"public"."t3_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t17_1m" qview1,
"public"."t6_1m" qview2,
"public"."t3_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t17_1m" qview1,
"public"."t6_1m" qview2,
"public"."t3_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t17_1m" qview1,
"public"."t2_1m" qview2,
"public"."t19_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t17_1m" qview1,
"public"."t2_1m" qview2,
"public"."t19_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t17_1m" qview1,
"public"."t2_1m" qview2,
"public"."t19_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t17_1m" qview1,
"public"."t2_1m" qview2,
"public"."t19_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t17_1m" qview1,
"public"."t2_1m" qview2,
"public"."t19_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t17_1m" qview1,
"public"."t2_1m" qview2,
"public"."t15_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t17_1m" qview1,
"public"."t2_1m" qview2,
"public"."t15_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t17_1m" qview1,
"public"."t2_1m" qview2,
"public"."t15_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t17_1m" qview1,
"public"."t2_1m" qview2,
"public"."t15_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t17_1m" qview1,
"public"."t2_1m" qview2,
"public"."t15_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t17_1m" qview1,
"public"."t2_1m" qview2,
"public"."t11_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t17_1m" qview1,
"public"."t2_1m" qview2,
"public"."t11_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t17_1m" qview1,
"public"."t2_1m" qview2,
"public"."t11_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t17_1m" qview1,
"public"."t2_1m" qview2,
"public"."t11_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t17_1m" qview1,
"public"."t2_1m" qview2,
"public"."t11_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t17_1m" qview1,
"public"."t2_1m" qview2,
"public"."t7_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t17_1m" qview1,
"public"."t2_1m" qview2,
"public"."t7_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t17_1m" qview1,
"public"."t2_1m" qview2,
"public"."t7_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t17_1m" qview1,
"public"."t2_1m" qview2,
"public"."t7_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t17_1m" qview1,
"public"."t2_1m" qview2,
"public"."t7_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t17_1m" qview1,
"public"."t2_1m" qview2,
"public"."t3_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t17_1m" qview1,
"public"."t2_1m" qview2,
"public"."t3_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t17_1m" qview1,
"public"."t2_1m" qview2,
"public"."t3_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t17_1m" qview1,
"public"."t2_1m" qview2,
"public"."t3_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t17_1m" qview1,
"public"."t2_1m" qview2,
"public"."t3_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t13_1m" qview1,
"public"."t18_1m" qview2,
"public"."t19_1m" qview3,
"public"."t20_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t13_1m" qview1,
"public"."t18_1m" qview2,
"public"."t19_1m" qview3,
"public"."t16_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t13_1m" qview1,
"public"."t18_1m" qview2,
"public"."t19_1m" qview3,
"public"."t12_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t13_1m" qview1,
"public"."t18_1m" qview2,
"public"."t19_1m" qview3,
"public"."t8_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t13_1m" qview1,
"public"."t18_1m" qview2,
"public"."t19_1m" qview3,
"public"."t4_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t13_1m" qview1,
"public"."t18_1m" qview2,
"public"."t15_1m" qview3,
"public"."t20_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t13_1m" qview1,
"public"."t18_1m" qview2,
"public"."t15_1m" qview3,
"public"."t16_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t13_1m" qview1,
"public"."t18_1m" qview2,
"public"."t15_1m" qview3,
"public"."t12_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t13_1m" qview1,
"public"."t18_1m" qview2,
"public"."t15_1m" qview3,
"public"."t8_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t13_1m" qview1,
"public"."t18_1m" qview2,
"public"."t15_1m" qview3,
"public"."t4_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t13_1m" qview1,
"public"."t18_1m" qview2,
"public"."t11_1m" qview3,
"public"."t20_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t13_1m" qview1,
"public"."t18_1m" qview2,
"public"."t11_1m" qview3,
"public"."t16_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t13_1m" qview1,
"public"."t18_1m" qview2,
"public"."t11_1m" qview3,
"public"."t12_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t13_1m" qview1,
"public"."t18_1m" qview2,
"public"."t11_1m" qview3,
"public"."t8_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t13_1m" qview1,
"public"."t18_1m" qview2,
"public"."t11_1m" qview3,
"public"."t4_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t13_1m" qview1,
"public"."t18_1m" qview2,
"public"."t7_1m" qview3,
"public"."t20_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t13_1m" qview1,
"public"."t18_1m" qview2,
"public"."t7_1m" qview3,
"public"."t16_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t13_1m" qview1,
"public"."t18_1m" qview2,
"public"."t7_1m" qview3,
"public"."t12_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t13_1m" qview1,
"public"."t18_1m" qview2,
"public"."t7_1m" qview3,
"public"."t8_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t13_1m" qview1,
"public"."t18_1m" qview2,
"public"."t7_1m" qview3,
"public"."t4_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t13_1m" qview1,
"public"."t18_1m" qview2,
"public"."t3_1m" qview3,
"public"."t20_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t13_1m" qview1,
"public"."t18_1m" qview2,
"public"."t3_1m" qview3,
"public"."t16_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t13_1m" qview1,
"public"."t18_1m" qview2,
"public"."t3_1m" qview3,
"public"."t12_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t13_1m" qview1,
"public"."t18_1m" qview2,
"public"."t3_1m" qview3,
"public"."t8_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t13_1m" qview1,
"public"."t18_1m" qview2,
"public"."t3_1m" qview3,
"public"."t4_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t13_1m" qview1,
"public"."t14_1m" qview2,
"public"."t19_1m" qview3,
"public"."t20_1m" qview4
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t13_1m" qview1,
"public"."t14_1m" qview2,
"public"."t19_1m" qview3,
"public"."t16_1m" qview4
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t13_1m" qview1,
"public"."t14_1m" qview2,
"public"."t19_1m" qview3,
"public"."t12_1m" qview4
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t13_1m" qview1,
"public"."t14_1m" qview2,
"public"."t19_1m" qview3,
"public"."t8_1m" qview4
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t13_1m" qview1,
"public"."t14_1m" qview2,
"public"."t19_1m" qview3,
"public"."t4_1m" qview4
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t13_1m" qview1,
"public"."t14_1m" qview2,
"public"."t15_1m" qview3,
"public"."t20_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t13_1m" qview1,
"public"."t14_1m" qview2,
"public"."t15_1m" qview3,
"public"."t16_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t13_1m" qview1,
"public"."t14_1m" qview2,
"public"."t15_1m" qview3,
"public"."t12_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t13_1m" qview1,
"public"."t14_1m" qview2,
"public"."t15_1m" qview3,
"public"."t8_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t13_1m" qview1,
"public"."t14_1m" qview2,
"public"."t15_1m" qview3,
"public"."t4_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t13_1m" qview1,
"public"."t14_1m" qview2,
"public"."t11_1m" qview3,
"public"."t20_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t13_1m" qview1,
"public"."t14_1m" qview2,
"public"."t11_1m" qview3,
"public"."t16_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t13_1m" qview1,
"public"."t14_1m" qview2,
"public"."t11_1m" qview3,
"public"."t12_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t13_1m" qview1,
"public"."t14_1m" qview2,
"public"."t11_1m" qview3,
"public"."t8_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t13_1m" qview1,
"public"."t14_1m" qview2,
"public"."t11_1m" qview3,
"public"."t4_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t13_1m" qview1,
"public"."t14_1m" qview2,
"public"."t7_1m" qview3,
"public"."t20_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t13_1m" qview1,
"public"."t14_1m" qview2,
"public"."t7_1m" qview3,
"public"."t16_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t13_1m" qview1,
"public"."t14_1m" qview2,
"public"."t7_1m" qview3,
"public"."t12_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t13_1m" qview1,
"public"."t14_1m" qview2,
"public"."t7_1m" qview3,
"public"."t8_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t13_1m" qview1,
"public"."t14_1m" qview2,
"public"."t7_1m" qview3,
"public"."t4_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t13_1m" qview1,
"public"."t14_1m" qview2,
"public"."t3_1m" qview3,
"public"."t20_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t13_1m" qview1,
"public"."t14_1m" qview2,
"public"."t3_1m" qview3,
"public"."t16_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t13_1m" qview1,
"public"."t14_1m" qview2,
"public"."t3_1m" qview3,
"public"."t12_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t13_1m" qview1,
"public"."t14_1m" qview2,
"public"."t3_1m" qview3,
"public"."t8_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t13_1m" qview1,
"public"."t14_1m" qview2,
"public"."t3_1m" qview3,
"public"."t4_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t13_1m" qview1,
"public"."t10_1m" qview2,
"public"."t19_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t13_1m" qview1,
"public"."t10_1m" qview2,
"public"."t19_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t13_1m" qview1,
"public"."t10_1m" qview2,
"public"."t19_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t13_1m" qview1,
"public"."t10_1m" qview2,
"public"."t19_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t13_1m" qview1,
"public"."t10_1m" qview2,
"public"."t19_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t13_1m" qview1,
"public"."t10_1m" qview2,
"public"."t15_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t13_1m" qview1,
"public"."t10_1m" qview2,
"public"."t15_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t13_1m" qview1,
"public"."t10_1m" qview2,
"public"."t15_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t13_1m" qview1,
"public"."t10_1m" qview2,
"public"."t15_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t13_1m" qview1,
"public"."t10_1m" qview2,
"public"."t15_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t13_1m" qview1,
"public"."t10_1m" qview2,
"public"."t11_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t13_1m" qview1,
"public"."t10_1m" qview2,
"public"."t11_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t13_1m" qview1,
"public"."t10_1m" qview2,
"public"."t11_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t13_1m" qview1,
"public"."t10_1m" qview2,
"public"."t11_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t13_1m" qview1,
"public"."t10_1m" qview2,
"public"."t11_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t13_1m" qview1,
"public"."t10_1m" qview2,
"public"."t7_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t13_1m" qview1,
"public"."t10_1m" qview2,
"public"."t7_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t13_1m" qview1,
"public"."t10_1m" qview2,
"public"."t7_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t13_1m" qview1,
"public"."t10_1m" qview2,
"public"."t7_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t13_1m" qview1,
"public"."t10_1m" qview2,
"public"."t7_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t13_1m" qview1,
"public"."t10_1m" qview2,
"public"."t3_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t13_1m" qview1,
"public"."t10_1m" qview2,
"public"."t3_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t13_1m" qview1,
"public"."t10_1m" qview2,
"public"."t3_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t13_1m" qview1,
"public"."t10_1m" qview2,
"public"."t3_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t13_1m" qview1,
"public"."t10_1m" qview2,
"public"."t3_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t13_1m" qview1,
"public"."t6_1m" qview2,
"public"."t19_1m" qview3,
"public"."t20_1m" qview4
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t13_1m" qview1,
"public"."t6_1m" qview2,
"public"."t19_1m" qview3,
"public"."t16_1m" qview4
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t13_1m" qview1,
"public"."t6_1m" qview2,
"public"."t19_1m" qview3,
"public"."t12_1m" qview4
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t13_1m" qview1,
"public"."t6_1m" qview2,
"public"."t19_1m" qview3,
"public"."t8_1m" qview4
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t13_1m" qview1,
"public"."t6_1m" qview2,
"public"."t19_1m" qview3,
"public"."t4_1m" qview4
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t13_1m" qview1,
"public"."t6_1m" qview2,
"public"."t15_1m" qview3,
"public"."t20_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t13_1m" qview1,
"public"."t6_1m" qview2,
"public"."t15_1m" qview3,
"public"."t16_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t13_1m" qview1,
"public"."t6_1m" qview2,
"public"."t15_1m" qview3,
"public"."t12_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t13_1m" qview1,
"public"."t6_1m" qview2,
"public"."t15_1m" qview3,
"public"."t8_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t13_1m" qview1,
"public"."t6_1m" qview2,
"public"."t15_1m" qview3,
"public"."t4_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t13_1m" qview1,
"public"."t6_1m" qview2,
"public"."t11_1m" qview3,
"public"."t20_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t13_1m" qview1,
"public"."t6_1m" qview2,
"public"."t11_1m" qview3,
"public"."t16_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t13_1m" qview1,
"public"."t6_1m" qview2,
"public"."t11_1m" qview3,
"public"."t12_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t13_1m" qview1,
"public"."t6_1m" qview2,
"public"."t11_1m" qview3,
"public"."t8_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t13_1m" qview1,
"public"."t6_1m" qview2,
"public"."t11_1m" qview3,
"public"."t4_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t13_1m" qview1,
"public"."t6_1m" qview2,
"public"."t7_1m" qview3,
"public"."t20_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t13_1m" qview1,
"public"."t6_1m" qview2,
"public"."t7_1m" qview3,
"public"."t16_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t13_1m" qview1,
"public"."t6_1m" qview2,
"public"."t7_1m" qview3,
"public"."t12_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t13_1m" qview1,
"public"."t6_1m" qview2,
"public"."t7_1m" qview3,
"public"."t8_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t13_1m" qview1,
"public"."t6_1m" qview2,
"public"."t7_1m" qview3,
"public"."t4_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t13_1m" qview1,
"public"."t6_1m" qview2,
"public"."t3_1m" qview3,
"public"."t20_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t13_1m" qview1,
"public"."t6_1m" qview2,
"public"."t3_1m" qview3,
"public"."t16_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t13_1m" qview1,
"public"."t6_1m" qview2,
"public"."t3_1m" qview3,
"public"."t12_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t13_1m" qview1,
"public"."t6_1m" qview2,
"public"."t3_1m" qview3,
"public"."t8_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t13_1m" qview1,
"public"."t6_1m" qview2,
"public"."t3_1m" qview3,
"public"."t4_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t13_1m" qview1,
"public"."t2_1m" qview2,
"public"."t19_1m" qview3,
"public"."t20_1m" qview4
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t13_1m" qview1,
"public"."t2_1m" qview2,
"public"."t19_1m" qview3,
"public"."t16_1m" qview4
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t13_1m" qview1,
"public"."t2_1m" qview2,
"public"."t19_1m" qview3,
"public"."t12_1m" qview4
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t13_1m" qview1,
"public"."t2_1m" qview2,
"public"."t19_1m" qview3,
"public"."t8_1m" qview4
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t13_1m" qview1,
"public"."t2_1m" qview2,
"public"."t19_1m" qview3,
"public"."t4_1m" qview4
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t13_1m" qview1,
"public"."t2_1m" qview2,
"public"."t15_1m" qview3,
"public"."t20_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t13_1m" qview1,
"public"."t2_1m" qview2,
"public"."t15_1m" qview3,
"public"."t16_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t13_1m" qview1,
"public"."t2_1m" qview2,
"public"."t15_1m" qview3,
"public"."t12_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t13_1m" qview1,
"public"."t2_1m" qview2,
"public"."t15_1m" qview3,
"public"."t8_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t13_1m" qview1,
"public"."t2_1m" qview2,
"public"."t15_1m" qview3,
"public"."t4_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t13_1m" qview1,
"public"."t2_1m" qview2,
"public"."t11_1m" qview3,
"public"."t20_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t13_1m" qview1,
"public"."t2_1m" qview2,
"public"."t11_1m" qview3,
"public"."t16_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t13_1m" qview1,
"public"."t2_1m" qview2,
"public"."t11_1m" qview3,
"public"."t12_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t13_1m" qview1,
"public"."t2_1m" qview2,
"public"."t11_1m" qview3,
"public"."t8_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t13_1m" qview1,
"public"."t2_1m" qview2,
"public"."t11_1m" qview3,
"public"."t4_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t13_1m" qview1,
"public"."t2_1m" qview2,
"public"."t7_1m" qview3,
"public"."t20_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t13_1m" qview1,
"public"."t2_1m" qview2,
"public"."t7_1m" qview3,
"public"."t16_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t13_1m" qview1,
"public"."t2_1m" qview2,
"public"."t7_1m" qview3,
"public"."t12_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t13_1m" qview1,
"public"."t2_1m" qview2,
"public"."t7_1m" qview3,
"public"."t8_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t13_1m" qview1,
"public"."t2_1m" qview2,
"public"."t7_1m" qview3,
"public"."t4_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t13_1m" qview1,
"public"."t2_1m" qview2,
"public"."t3_1m" qview3,
"public"."t20_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t13_1m" qview1,
"public"."t2_1m" qview2,
"public"."t3_1m" qview3,
"public"."t16_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t13_1m" qview1,
"public"."t2_1m" qview2,
"public"."t3_1m" qview3,
"public"."t12_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t13_1m" qview1,
"public"."t2_1m" qview2,
"public"."t3_1m" qview3,
"public"."t8_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t13_1m" qview1,
"public"."t2_1m" qview2,
"public"."t3_1m" qview3,
"public"."t4_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t9_1m" qview1,
"public"."t18_1m" qview2,
"public"."t19_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t9_1m" qview1,
"public"."t18_1m" qview2,
"public"."t19_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t9_1m" qview1,
"public"."t18_1m" qview2,
"public"."t19_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t9_1m" qview1,
"public"."t18_1m" qview2,
"public"."t19_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t9_1m" qview1,
"public"."t18_1m" qview2,
"public"."t19_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t9_1m" qview1,
"public"."t18_1m" qview2,
"public"."t15_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t9_1m" qview1,
"public"."t18_1m" qview2,
"public"."t15_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t9_1m" qview1,
"public"."t18_1m" qview2,
"public"."t15_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t9_1m" qview1,
"public"."t18_1m" qview2,
"public"."t15_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t9_1m" qview1,
"public"."t18_1m" qview2,
"public"."t15_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t9_1m" qview1,
"public"."t18_1m" qview2,
"public"."t11_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t9_1m" qview1,
"public"."t18_1m" qview2,
"public"."t11_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t9_1m" qview1,
"public"."t18_1m" qview2,
"public"."t11_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t9_1m" qview1,
"public"."t18_1m" qview2,
"public"."t11_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t9_1m" qview1,
"public"."t18_1m" qview2,
"public"."t11_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t9_1m" qview1,
"public"."t18_1m" qview2,
"public"."t7_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t9_1m" qview1,
"public"."t18_1m" qview2,
"public"."t7_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t9_1m" qview1,
"public"."t18_1m" qview2,
"public"."t7_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t9_1m" qview1,
"public"."t18_1m" qview2,
"public"."t7_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t9_1m" qview1,
"public"."t18_1m" qview2,
"public"."t7_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t9_1m" qview1,
"public"."t18_1m" qview2,
"public"."t3_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t9_1m" qview1,
"public"."t18_1m" qview2,
"public"."t3_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t9_1m" qview1,
"public"."t18_1m" qview2,
"public"."t3_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t9_1m" qview1,
"public"."t18_1m" qview2,
"public"."t3_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t9_1m" qview1,
"public"."t18_1m" qview2,
"public"."t3_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t9_1m" qview1,
"public"."t14_1m" qview2,
"public"."t19_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t9_1m" qview1,
"public"."t14_1m" qview2,
"public"."t19_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t9_1m" qview1,
"public"."t14_1m" qview2,
"public"."t19_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t9_1m" qview1,
"public"."t14_1m" qview2,
"public"."t19_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t9_1m" qview1,
"public"."t14_1m" qview2,
"public"."t19_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t9_1m" qview1,
"public"."t14_1m" qview2,
"public"."t15_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t9_1m" qview1,
"public"."t14_1m" qview2,
"public"."t15_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t9_1m" qview1,
"public"."t14_1m" qview2,
"public"."t15_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t9_1m" qview1,
"public"."t14_1m" qview2,
"public"."t15_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t9_1m" qview1,
"public"."t14_1m" qview2,
"public"."t15_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t9_1m" qview1,
"public"."t14_1m" qview2,
"public"."t11_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t9_1m" qview1,
"public"."t14_1m" qview2,
"public"."t11_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t9_1m" qview1,
"public"."t14_1m" qview2,
"public"."t11_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t9_1m" qview1,
"public"."t14_1m" qview2,
"public"."t11_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t9_1m" qview1,
"public"."t14_1m" qview2,
"public"."t11_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t9_1m" qview1,
"public"."t14_1m" qview2,
"public"."t7_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t9_1m" qview1,
"public"."t14_1m" qview2,
"public"."t7_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t9_1m" qview1,
"public"."t14_1m" qview2,
"public"."t7_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t9_1m" qview1,
"public"."t14_1m" qview2,
"public"."t7_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t9_1m" qview1,
"public"."t14_1m" qview2,
"public"."t7_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t9_1m" qview1,
"public"."t14_1m" qview2,
"public"."t3_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t9_1m" qview1,
"public"."t14_1m" qview2,
"public"."t3_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t9_1m" qview1,
"public"."t14_1m" qview2,
"public"."t3_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t9_1m" qview1,
"public"."t14_1m" qview2,
"public"."t3_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t9_1m" qview1,
"public"."t14_1m" qview2,
"public"."t3_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t9_1m" qview1,
"public"."t10_1m" qview2,
"public"."t19_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t9_1m" qview1,
"public"."t10_1m" qview2,
"public"."t19_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t9_1m" qview1,
"public"."t10_1m" qview2,
"public"."t19_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t9_1m" qview1,
"public"."t10_1m" qview2,
"public"."t19_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t9_1m" qview1,
"public"."t10_1m" qview2,
"public"."t19_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t9_1m" qview1,
"public"."t10_1m" qview2,
"public"."t15_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t9_1m" qview1,
"public"."t10_1m" qview2,
"public"."t15_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t9_1m" qview1,
"public"."t10_1m" qview2,
"public"."t15_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t9_1m" qview1,
"public"."t10_1m" qview2,
"public"."t15_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t9_1m" qview1,
"public"."t10_1m" qview2,
"public"."t15_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t9_1m" qview1,
"public"."t10_1m" qview2,
"public"."t11_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t9_1m" qview1,
"public"."t10_1m" qview2,
"public"."t11_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t9_1m" qview1,
"public"."t10_1m" qview2,
"public"."t11_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t9_1m" qview1,
"public"."t10_1m" qview2,
"public"."t11_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t9_1m" qview1,
"public"."t10_1m" qview2,
"public"."t11_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t9_1m" qview1,
"public"."t10_1m" qview2,
"public"."t7_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t9_1m" qview1,
"public"."t10_1m" qview2,
"public"."t7_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t9_1m" qview1,
"public"."t10_1m" qview2,
"public"."t7_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t9_1m" qview1,
"public"."t10_1m" qview2,
"public"."t7_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t9_1m" qview1,
"public"."t10_1m" qview2,
"public"."t7_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t9_1m" qview1,
"public"."t10_1m" qview2,
"public"."t3_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t9_1m" qview1,
"public"."t10_1m" qview2,
"public"."t3_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t9_1m" qview1,
"public"."t10_1m" qview2,
"public"."t3_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t9_1m" qview1,
"public"."t10_1m" qview2,
"public"."t3_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t9_1m" qview1,
"public"."t10_1m" qview2,
"public"."t3_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t9_1m" qview1,
"public"."t6_1m" qview2,
"public"."t19_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t9_1m" qview1,
"public"."t6_1m" qview2,
"public"."t19_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t9_1m" qview1,
"public"."t6_1m" qview2,
"public"."t19_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t9_1m" qview1,
"public"."t6_1m" qview2,
"public"."t19_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t9_1m" qview1,
"public"."t6_1m" qview2,
"public"."t19_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t9_1m" qview1,
"public"."t6_1m" qview2,
"public"."t15_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t9_1m" qview1,
"public"."t6_1m" qview2,
"public"."t15_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t9_1m" qview1,
"public"."t6_1m" qview2,
"public"."t15_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t9_1m" qview1,
"public"."t6_1m" qview2,
"public"."t15_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t9_1m" qview1,
"public"."t6_1m" qview2,
"public"."t15_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t9_1m" qview1,
"public"."t6_1m" qview2,
"public"."t11_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t9_1m" qview1,
"public"."t6_1m" qview2,
"public"."t11_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t9_1m" qview1,
"public"."t6_1m" qview2,
"public"."t11_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t9_1m" qview1,
"public"."t6_1m" qview2,
"public"."t11_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t9_1m" qview1,
"public"."t6_1m" qview2,
"public"."t11_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t9_1m" qview1,
"public"."t6_1m" qview2,
"public"."t7_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t9_1m" qview1,
"public"."t6_1m" qview2,
"public"."t7_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t9_1m" qview1,
"public"."t6_1m" qview2,
"public"."t7_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t9_1m" qview1,
"public"."t6_1m" qview2,
"public"."t7_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t9_1m" qview1,
"public"."t6_1m" qview2,
"public"."t7_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t9_1m" qview1,
"public"."t6_1m" qview2,
"public"."t3_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t9_1m" qview1,
"public"."t6_1m" qview2,
"public"."t3_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t9_1m" qview1,
"public"."t6_1m" qview2,
"public"."t3_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t9_1m" qview1,
"public"."t6_1m" qview2,
"public"."t3_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t9_1m" qview1,
"public"."t6_1m" qview2,
"public"."t3_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t9_1m" qview1,
"public"."t2_1m" qview2,
"public"."t19_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t9_1m" qview1,
"public"."t2_1m" qview2,
"public"."t19_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t9_1m" qview1,
"public"."t2_1m" qview2,
"public"."t19_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t9_1m" qview1,
"public"."t2_1m" qview2,
"public"."t19_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t9_1m" qview1,
"public"."t2_1m" qview2,
"public"."t19_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t9_1m" qview1,
"public"."t2_1m" qview2,
"public"."t15_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t9_1m" qview1,
"public"."t2_1m" qview2,
"public"."t15_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t9_1m" qview1,
"public"."t2_1m" qview2,
"public"."t15_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t9_1m" qview1,
"public"."t2_1m" qview2,
"public"."t15_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t9_1m" qview1,
"public"."t2_1m" qview2,
"public"."t15_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t9_1m" qview1,
"public"."t2_1m" qview2,
"public"."t11_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t9_1m" qview1,
"public"."t2_1m" qview2,
"public"."t11_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t9_1m" qview1,
"public"."t2_1m" qview2,
"public"."t11_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t9_1m" qview1,
"public"."t2_1m" qview2,
"public"."t11_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t9_1m" qview1,
"public"."t2_1m" qview2,
"public"."t11_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t9_1m" qview1,
"public"."t2_1m" qview2,
"public"."t7_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t9_1m" qview1,
"public"."t2_1m" qview2,
"public"."t7_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t9_1m" qview1,
"public"."t2_1m" qview2,
"public"."t7_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t9_1m" qview1,
"public"."t2_1m" qview2,
"public"."t7_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t9_1m" qview1,
"public"."t2_1m" qview2,
"public"."t7_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t9_1m" qview1,
"public"."t2_1m" qview2,
"public"."t3_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t9_1m" qview1,
"public"."t2_1m" qview2,
"public"."t3_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t9_1m" qview1,
"public"."t2_1m" qview2,
"public"."t3_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t9_1m" qview1,
"public"."t2_1m" qview2,
"public"."t3_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t9_1m" qview1,
"public"."t2_1m" qview2,
"public"."t3_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t5_1m" qview1,
"public"."t18_1m" qview2,
"public"."t19_1m" qview3,
"public"."t20_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t5_1m" qview1,
"public"."t18_1m" qview2,
"public"."t19_1m" qview3,
"public"."t16_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t5_1m" qview1,
"public"."t18_1m" qview2,
"public"."t19_1m" qview3,
"public"."t12_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t5_1m" qview1,
"public"."t18_1m" qview2,
"public"."t19_1m" qview3,
"public"."t8_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t5_1m" qview1,
"public"."t18_1m" qview2,
"public"."t19_1m" qview3,
"public"."t4_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t5_1m" qview1,
"public"."t18_1m" qview2,
"public"."t15_1m" qview3,
"public"."t20_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t5_1m" qview1,
"public"."t18_1m" qview2,
"public"."t15_1m" qview3,
"public"."t16_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t5_1m" qview1,
"public"."t18_1m" qview2,
"public"."t15_1m" qview3,
"public"."t12_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t5_1m" qview1,
"public"."t18_1m" qview2,
"public"."t15_1m" qview3,
"public"."t8_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t5_1m" qview1,
"public"."t18_1m" qview2,
"public"."t15_1m" qview3,
"public"."t4_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t5_1m" qview1,
"public"."t18_1m" qview2,
"public"."t11_1m" qview3,
"public"."t20_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t5_1m" qview1,
"public"."t18_1m" qview2,
"public"."t11_1m" qview3,
"public"."t16_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t5_1m" qview1,
"public"."t18_1m" qview2,
"public"."t11_1m" qview3,
"public"."t12_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t5_1m" qview1,
"public"."t18_1m" qview2,
"public"."t11_1m" qview3,
"public"."t8_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t5_1m" qview1,
"public"."t18_1m" qview2,
"public"."t11_1m" qview3,
"public"."t4_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t5_1m" qview1,
"public"."t18_1m" qview2,
"public"."t7_1m" qview3,
"public"."t20_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t5_1m" qview1,
"public"."t18_1m" qview2,
"public"."t7_1m" qview3,
"public"."t16_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t5_1m" qview1,
"public"."t18_1m" qview2,
"public"."t7_1m" qview3,
"public"."t12_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t5_1m" qview1,
"public"."t18_1m" qview2,
"public"."t7_1m" qview3,
"public"."t8_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t5_1m" qview1,
"public"."t18_1m" qview2,
"public"."t7_1m" qview3,
"public"."t4_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t5_1m" qview1,
"public"."t18_1m" qview2,
"public"."t3_1m" qview3,
"public"."t20_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t5_1m" qview1,
"public"."t18_1m" qview2,
"public"."t3_1m" qview3,
"public"."t16_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t5_1m" qview1,
"public"."t18_1m" qview2,
"public"."t3_1m" qview3,
"public"."t12_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t5_1m" qview1,
"public"."t18_1m" qview2,
"public"."t3_1m" qview3,
"public"."t8_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t5_1m" qview1,
"public"."t18_1m" qview2,
"public"."t3_1m" qview3,
"public"."t4_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t5_1m" qview1,
"public"."t14_1m" qview2,
"public"."t19_1m" qview3,
"public"."t20_1m" qview4
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t5_1m" qview1,
"public"."t14_1m" qview2,
"public"."t19_1m" qview3,
"public"."t16_1m" qview4
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t5_1m" qview1,
"public"."t14_1m" qview2,
"public"."t19_1m" qview3,
"public"."t12_1m" qview4
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t5_1m" qview1,
"public"."t14_1m" qview2,
"public"."t19_1m" qview3,
"public"."t8_1m" qview4
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t5_1m" qview1,
"public"."t14_1m" qview2,
"public"."t19_1m" qview3,
"public"."t4_1m" qview4
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t5_1m" qview1,
"public"."t14_1m" qview2,
"public"."t15_1m" qview3,
"public"."t20_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t5_1m" qview1,
"public"."t14_1m" qview2,
"public"."t15_1m" qview3,
"public"."t16_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t5_1m" qview1,
"public"."t14_1m" qview2,
"public"."t15_1m" qview3,
"public"."t12_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t5_1m" qview1,
"public"."t14_1m" qview2,
"public"."t15_1m" qview3,
"public"."t8_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t5_1m" qview1,
"public"."t14_1m" qview2,
"public"."t15_1m" qview3,
"public"."t4_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t5_1m" qview1,
"public"."t14_1m" qview2,
"public"."t11_1m" qview3,
"public"."t20_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t5_1m" qview1,
"public"."t14_1m" qview2,
"public"."t11_1m" qview3,
"public"."t16_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t5_1m" qview1,
"public"."t14_1m" qview2,
"public"."t11_1m" qview3,
"public"."t12_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t5_1m" qview1,
"public"."t14_1m" qview2,
"public"."t11_1m" qview3,
"public"."t8_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t5_1m" qview1,
"public"."t14_1m" qview2,
"public"."t11_1m" qview3,
"public"."t4_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t5_1m" qview1,
"public"."t14_1m" qview2,
"public"."t7_1m" qview3,
"public"."t20_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t5_1m" qview1,
"public"."t14_1m" qview2,
"public"."t7_1m" qview3,
"public"."t16_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t5_1m" qview1,
"public"."t14_1m" qview2,
"public"."t7_1m" qview3,
"public"."t12_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t5_1m" qview1,
"public"."t14_1m" qview2,
"public"."t7_1m" qview3,
"public"."t8_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t5_1m" qview1,
"public"."t14_1m" qview2,
"public"."t7_1m" qview3,
"public"."t4_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t5_1m" qview1,
"public"."t14_1m" qview2,
"public"."t3_1m" qview3,
"public"."t20_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t5_1m" qview1,
"public"."t14_1m" qview2,
"public"."t3_1m" qview3,
"public"."t16_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t5_1m" qview1,
"public"."t14_1m" qview2,
"public"."t3_1m" qview3,
"public"."t12_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t5_1m" qview1,
"public"."t14_1m" qview2,
"public"."t3_1m" qview3,
"public"."t8_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t5_1m" qview1,
"public"."t14_1m" qview2,
"public"."t3_1m" qview3,
"public"."t4_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t5_1m" qview1,
"public"."t10_1m" qview2,
"public"."t19_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t5_1m" qview1,
"public"."t10_1m" qview2,
"public"."t19_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t5_1m" qview1,
"public"."t10_1m" qview2,
"public"."t19_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t5_1m" qview1,
"public"."t10_1m" qview2,
"public"."t19_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t5_1m" qview1,
"public"."t10_1m" qview2,
"public"."t19_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t5_1m" qview1,
"public"."t10_1m" qview2,
"public"."t15_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t5_1m" qview1,
"public"."t10_1m" qview2,
"public"."t15_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t5_1m" qview1,
"public"."t10_1m" qview2,
"public"."t15_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t5_1m" qview1,
"public"."t10_1m" qview2,
"public"."t15_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t5_1m" qview1,
"public"."t10_1m" qview2,
"public"."t15_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t5_1m" qview1,
"public"."t10_1m" qview2,
"public"."t11_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t5_1m" qview1,
"public"."t10_1m" qview2,
"public"."t11_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t5_1m" qview1,
"public"."t10_1m" qview2,
"public"."t11_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t5_1m" qview1,
"public"."t10_1m" qview2,
"public"."t11_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t5_1m" qview1,
"public"."t10_1m" qview2,
"public"."t11_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t5_1m" qview1,
"public"."t10_1m" qview2,
"public"."t7_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t5_1m" qview1,
"public"."t10_1m" qview2,
"public"."t7_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t5_1m" qview1,
"public"."t10_1m" qview2,
"public"."t7_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t5_1m" qview1,
"public"."t10_1m" qview2,
"public"."t7_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t5_1m" qview1,
"public"."t10_1m" qview2,
"public"."t7_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t5_1m" qview1,
"public"."t10_1m" qview2,
"public"."t3_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t5_1m" qview1,
"public"."t10_1m" qview2,
"public"."t3_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t5_1m" qview1,
"public"."t10_1m" qview2,
"public"."t3_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t5_1m" qview1,
"public"."t10_1m" qview2,
"public"."t3_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t5_1m" qview1,
"public"."t10_1m" qview2,
"public"."t3_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t5_1m" qview1,
"public"."t6_1m" qview2,
"public"."t19_1m" qview3,
"public"."t20_1m" qview4
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t5_1m" qview1,
"public"."t6_1m" qview2,
"public"."t19_1m" qview3,
"public"."t16_1m" qview4
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t5_1m" qview1,
"public"."t6_1m" qview2,
"public"."t19_1m" qview3,
"public"."t12_1m" qview4
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t5_1m" qview1,
"public"."t6_1m" qview2,
"public"."t19_1m" qview3,
"public"."t8_1m" qview4
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t5_1m" qview1,
"public"."t6_1m" qview2,
"public"."t19_1m" qview3,
"public"."t4_1m" qview4
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t5_1m" qview1,
"public"."t6_1m" qview2,
"public"."t15_1m" qview3,
"public"."t20_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t5_1m" qview1,
"public"."t6_1m" qview2,
"public"."t15_1m" qview3,
"public"."t16_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t5_1m" qview1,
"public"."t6_1m" qview2,
"public"."t15_1m" qview3,
"public"."t12_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t5_1m" qview1,
"public"."t6_1m" qview2,
"public"."t15_1m" qview3,
"public"."t8_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t5_1m" qview1,
"public"."t6_1m" qview2,
"public"."t15_1m" qview3,
"public"."t4_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t5_1m" qview1,
"public"."t6_1m" qview2,
"public"."t11_1m" qview3,
"public"."t20_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t5_1m" qview1,
"public"."t6_1m" qview2,
"public"."t11_1m" qview3,
"public"."t16_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t5_1m" qview1,
"public"."t6_1m" qview2,
"public"."t11_1m" qview3,
"public"."t12_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t5_1m" qview1,
"public"."t6_1m" qview2,
"public"."t11_1m" qview3,
"public"."t8_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t5_1m" qview1,
"public"."t6_1m" qview2,
"public"."t11_1m" qview3,
"public"."t4_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t5_1m" qview1,
"public"."t6_1m" qview2,
"public"."t7_1m" qview3,
"public"."t20_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t5_1m" qview1,
"public"."t6_1m" qview2,
"public"."t7_1m" qview3,
"public"."t16_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t5_1m" qview1,
"public"."t6_1m" qview2,
"public"."t7_1m" qview3,
"public"."t12_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t5_1m" qview1,
"public"."t6_1m" qview2,
"public"."t7_1m" qview3,
"public"."t8_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t5_1m" qview1,
"public"."t6_1m" qview2,
"public"."t7_1m" qview3,
"public"."t4_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t5_1m" qview1,
"public"."t6_1m" qview2,
"public"."t3_1m" qview3,
"public"."t20_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t5_1m" qview1,
"public"."t6_1m" qview2,
"public"."t3_1m" qview3,
"public"."t16_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t5_1m" qview1,
"public"."t6_1m" qview2,
"public"."t3_1m" qview3,
"public"."t12_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t5_1m" qview1,
"public"."t6_1m" qview2,
"public"."t3_1m" qview3,
"public"."t8_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t5_1m" qview1,
"public"."t6_1m" qview2,
"public"."t3_1m" qview3,
"public"."t4_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t5_1m" qview1,
"public"."t2_1m" qview2,
"public"."t19_1m" qview3,
"public"."t20_1m" qview4
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t5_1m" qview1,
"public"."t2_1m" qview2,
"public"."t19_1m" qview3,
"public"."t16_1m" qview4
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t5_1m" qview1,
"public"."t2_1m" qview2,
"public"."t19_1m" qview3,
"public"."t12_1m" qview4
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t5_1m" qview1,
"public"."t2_1m" qview2,
"public"."t19_1m" qview3,
"public"."t8_1m" qview4
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t5_1m" qview1,
"public"."t2_1m" qview2,
"public"."t19_1m" qview3,
"public"."t4_1m" qview4
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t5_1m" qview1,
"public"."t2_1m" qview2,
"public"."t15_1m" qview3,
"public"."t20_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t5_1m" qview1,
"public"."t2_1m" qview2,
"public"."t15_1m" qview3,
"public"."t16_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t5_1m" qview1,
"public"."t2_1m" qview2,
"public"."t15_1m" qview3,
"public"."t12_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t5_1m" qview1,
"public"."t2_1m" qview2,
"public"."t15_1m" qview3,
"public"."t8_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t5_1m" qview1,
"public"."t2_1m" qview2,
"public"."t15_1m" qview3,
"public"."t4_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t5_1m" qview1,
"public"."t2_1m" qview2,
"public"."t11_1m" qview3,
"public"."t20_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t5_1m" qview1,
"public"."t2_1m" qview2,
"public"."t11_1m" qview3,
"public"."t16_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t5_1m" qview1,
"public"."t2_1m" qview2,
"public"."t11_1m" qview3,
"public"."t12_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t5_1m" qview1,
"public"."t2_1m" qview2,
"public"."t11_1m" qview3,
"public"."t8_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t5_1m" qview1,
"public"."t2_1m" qview2,
"public"."t11_1m" qview3,
"public"."t4_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t5_1m" qview1,
"public"."t2_1m" qview2,
"public"."t7_1m" qview3,
"public"."t20_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t5_1m" qview1,
"public"."t2_1m" qview2,
"public"."t7_1m" qview3,
"public"."t16_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t5_1m" qview1,
"public"."t2_1m" qview2,
"public"."t7_1m" qview3,
"public"."t12_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t5_1m" qview1,
"public"."t2_1m" qview2,
"public"."t7_1m" qview3,
"public"."t8_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t5_1m" qview1,
"public"."t2_1m" qview2,
"public"."t7_1m" qview3,
"public"."t4_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t5_1m" qview1,
"public"."t2_1m" qview2,
"public"."t3_1m" qview3,
"public"."t20_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t5_1m" qview1,
"public"."t2_1m" qview2,
"public"."t3_1m" qview3,
"public"."t16_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t5_1m" qview1,
"public"."t2_1m" qview2,
"public"."t3_1m" qview3,
"public"."t12_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t5_1m" qview1,
"public"."t2_1m" qview2,
"public"."t3_1m" qview3,
"public"."t8_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t5_1m" qview1,
"public"."t2_1m" qview2,
"public"."t3_1m" qview3,
"public"."t4_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t1_1m" qview1,
"public"."t18_1m" qview2,
"public"."t19_1m" qview3,
"public"."t20_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t1_1m" qview1,
"public"."t18_1m" qview2,
"public"."t19_1m" qview3,
"public"."t16_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t1_1m" qview1,
"public"."t18_1m" qview2,
"public"."t19_1m" qview3,
"public"."t12_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t18_1m" qview2,
"public"."t19_1m" qview3,
"public"."t8_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t18_1m" qview2,
"public"."t19_1m" qview3,
"public"."t4_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t1_1m" qview1,
"public"."t18_1m" qview2,
"public"."t15_1m" qview3,
"public"."t20_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t1_1m" qview1,
"public"."t18_1m" qview2,
"public"."t15_1m" qview3,
"public"."t16_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t1_1m" qview1,
"public"."t18_1m" qview2,
"public"."t15_1m" qview3,
"public"."t12_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t18_1m" qview2,
"public"."t15_1m" qview3,
"public"."t8_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t18_1m" qview2,
"public"."t15_1m" qview3,
"public"."t4_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t1_1m" qview1,
"public"."t18_1m" qview2,
"public"."t11_1m" qview3,
"public"."t20_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t1_1m" qview1,
"public"."t18_1m" qview2,
"public"."t11_1m" qview3,
"public"."t16_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t1_1m" qview1,
"public"."t18_1m" qview2,
"public"."t11_1m" qview3,
"public"."t12_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t18_1m" qview2,
"public"."t11_1m" qview3,
"public"."t8_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t18_1m" qview2,
"public"."t11_1m" qview3,
"public"."t4_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t1_1m" qview1,
"public"."t18_1m" qview2,
"public"."t7_1m" qview3,
"public"."t20_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t1_1m" qview1,
"public"."t18_1m" qview2,
"public"."t7_1m" qview3,
"public"."t16_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t1_1m" qview1,
"public"."t18_1m" qview2,
"public"."t7_1m" qview3,
"public"."t12_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t18_1m" qview2,
"public"."t7_1m" qview3,
"public"."t8_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t18_1m" qview2,
"public"."t7_1m" qview3,
"public"."t4_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t1_1m" qview1,
"public"."t18_1m" qview2,
"public"."t3_1m" qview3,
"public"."t20_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t1_1m" qview1,
"public"."t18_1m" qview2,
"public"."t3_1m" qview3,
"public"."t16_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t1_1m" qview1,
"public"."t18_1m" qview2,
"public"."t3_1m" qview3,
"public"."t12_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t18_1m" qview2,
"public"."t3_1m" qview3,
"public"."t8_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t18_1m" qview2,
"public"."t3_1m" qview3,
"public"."t4_1m" qview4
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
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t1_1m" qview1,
"public"."t14_1m" qview2,
"public"."t19_1m" qview3,
"public"."t20_1m" qview4
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t1_1m" qview1,
"public"."t14_1m" qview2,
"public"."t19_1m" qview3,
"public"."t16_1m" qview4
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t1_1m" qview1,
"public"."t14_1m" qview2,
"public"."t19_1m" qview3,
"public"."t12_1m" qview4
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t14_1m" qview2,
"public"."t19_1m" qview3,
"public"."t8_1m" qview4
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t14_1m" qview2,
"public"."t19_1m" qview3,
"public"."t4_1m" qview4
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t1_1m" qview1,
"public"."t14_1m" qview2,
"public"."t15_1m" qview3,
"public"."t20_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t1_1m" qview1,
"public"."t14_1m" qview2,
"public"."t15_1m" qview3,
"public"."t16_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t1_1m" qview1,
"public"."t14_1m" qview2,
"public"."t15_1m" qview3,
"public"."t12_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t14_1m" qview2,
"public"."t15_1m" qview3,
"public"."t8_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t14_1m" qview2,
"public"."t15_1m" qview3,
"public"."t4_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t1_1m" qview1,
"public"."t14_1m" qview2,
"public"."t11_1m" qview3,
"public"."t20_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t1_1m" qview1,
"public"."t14_1m" qview2,
"public"."t11_1m" qview3,
"public"."t16_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t1_1m" qview1,
"public"."t14_1m" qview2,
"public"."t11_1m" qview3,
"public"."t12_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t14_1m" qview2,
"public"."t11_1m" qview3,
"public"."t8_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t14_1m" qview2,
"public"."t11_1m" qview3,
"public"."t4_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t1_1m" qview1,
"public"."t14_1m" qview2,
"public"."t7_1m" qview3,
"public"."t20_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t1_1m" qview1,
"public"."t14_1m" qview2,
"public"."t7_1m" qview3,
"public"."t16_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t1_1m" qview1,
"public"."t14_1m" qview2,
"public"."t7_1m" qview3,
"public"."t12_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t14_1m" qview2,
"public"."t7_1m" qview3,
"public"."t8_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t14_1m" qview2,
"public"."t7_1m" qview3,
"public"."t4_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t1_1m" qview1,
"public"."t14_1m" qview2,
"public"."t3_1m" qview3,
"public"."t20_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t1_1m" qview1,
"public"."t14_1m" qview2,
"public"."t3_1m" qview3,
"public"."t16_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t1_1m" qview1,
"public"."t14_1m" qview2,
"public"."t3_1m" qview3,
"public"."t12_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t14_1m" qview2,
"public"."t3_1m" qview3,
"public"."t8_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t14_1m" qview2,
"public"."t3_1m" qview3,
"public"."t4_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t1_1m" qview1,
"public"."t10_1m" qview2,
"public"."t19_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t1_1m" qview1,
"public"."t10_1m" qview2,
"public"."t19_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t1_1m" qview1,
"public"."t10_1m" qview2,
"public"."t19_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t10_1m" qview2,
"public"."t19_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t10_1m" qview2,
"public"."t19_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t1_1m" qview1,
"public"."t10_1m" qview2,
"public"."t15_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t1_1m" qview1,
"public"."t10_1m" qview2,
"public"."t15_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t1_1m" qview1,
"public"."t10_1m" qview2,
"public"."t15_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t10_1m" qview2,
"public"."t15_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t10_1m" qview2,
"public"."t15_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t1_1m" qview1,
"public"."t10_1m" qview2,
"public"."t11_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t1_1m" qview1,
"public"."t10_1m" qview2,
"public"."t11_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t1_1m" qview1,
"public"."t10_1m" qview2,
"public"."t11_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t10_1m" qview2,
"public"."t11_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t10_1m" qview2,
"public"."t11_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t1_1m" qview1,
"public"."t10_1m" qview2,
"public"."t7_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t1_1m" qview1,
"public"."t10_1m" qview2,
"public"."t7_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t1_1m" qview1,
"public"."t10_1m" qview2,
"public"."t7_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t10_1m" qview2,
"public"."t7_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t10_1m" qview2,
"public"."t7_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t1_1m" qview1,
"public"."t10_1m" qview2,
"public"."t3_1m" qview3,
"public"."t20_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t1_1m" qview1,
"public"."t10_1m" qview2,
"public"."t3_1m" qview3,
"public"."t16_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t1_1m" qview1,
"public"."t10_1m" qview2,
"public"."t3_1m" qview3,
"public"."t12_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t10_1m" qview2,
"public"."t3_1m" qview3,
"public"."t8_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."string4", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t10_1m" qview2,
"public"."t3_1m" qview3,
"public"."t4_1m" qview4
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 0) AND (qview2."onepercent" < 20)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL AND
(qview1."unique2" = qview3."unique2") AND
((qview3."onepercent" >= 0) AND (qview3."onepercent" < 20)) AND
qview3."evenonepercent" IS NOT NULL AND
qview3."stringu2" IS NOT NULL AND
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t1_1m" qview1,
"public"."t6_1m" qview2,
"public"."t19_1m" qview3,
"public"."t20_1m" qview4
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t1_1m" qview1,
"public"."t6_1m" qview2,
"public"."t19_1m" qview3,
"public"."t16_1m" qview4
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t1_1m" qview1,
"public"."t6_1m" qview2,
"public"."t19_1m" qview3,
"public"."t12_1m" qview4
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t6_1m" qview2,
"public"."t19_1m" qview3,
"public"."t8_1m" qview4
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t6_1m" qview2,
"public"."t19_1m" qview3,
"public"."t4_1m" qview4
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t1_1m" qview1,
"public"."t6_1m" qview2,
"public"."t15_1m" qview3,
"public"."t20_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t1_1m" qview1,
"public"."t6_1m" qview2,
"public"."t15_1m" qview3,
"public"."t16_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t1_1m" qview1,
"public"."t6_1m" qview2,
"public"."t15_1m" qview3,
"public"."t12_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t6_1m" qview2,
"public"."t15_1m" qview3,
"public"."t8_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t6_1m" qview2,
"public"."t15_1m" qview3,
"public"."t4_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t1_1m" qview1,
"public"."t6_1m" qview2,
"public"."t11_1m" qview3,
"public"."t20_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t1_1m" qview1,
"public"."t6_1m" qview2,
"public"."t11_1m" qview3,
"public"."t16_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t1_1m" qview1,
"public"."t6_1m" qview2,
"public"."t11_1m" qview3,
"public"."t12_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t6_1m" qview2,
"public"."t11_1m" qview3,
"public"."t8_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t6_1m" qview2,
"public"."t11_1m" qview3,
"public"."t4_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t1_1m" qview1,
"public"."t6_1m" qview2,
"public"."t7_1m" qview3,
"public"."t20_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t1_1m" qview1,
"public"."t6_1m" qview2,
"public"."t7_1m" qview3,
"public"."t16_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t1_1m" qview1,
"public"."t6_1m" qview2,
"public"."t7_1m" qview3,
"public"."t12_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t6_1m" qview2,
"public"."t7_1m" qview3,
"public"."t8_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t6_1m" qview2,
"public"."t7_1m" qview3,
"public"."t4_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t1_1m" qview1,
"public"."t6_1m" qview2,
"public"."t3_1m" qview3,
"public"."t20_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t1_1m" qview1,
"public"."t6_1m" qview2,
"public"."t3_1m" qview3,
"public"."t16_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t1_1m" qview1,
"public"."t6_1m" qview2,
"public"."t3_1m" qview3,
"public"."t12_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t6_1m" qview2,
"public"."t3_1m" qview3,
"public"."t8_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t6_1m" qview2,
"public"."t3_1m" qview3,
"public"."t4_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t1_1m" qview1,
"public"."t2_1m" qview2,
"public"."t19_1m" qview3,
"public"."t20_1m" qview4
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t1_1m" qview1,
"public"."t2_1m" qview2,
"public"."t19_1m" qview3,
"public"."t16_1m" qview4
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t1_1m" qview1,
"public"."t2_1m" qview2,
"public"."t19_1m" qview3,
"public"."t12_1m" qview4
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t2_1m" qview2,
"public"."t19_1m" qview3,
"public"."t8_1m" qview4
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t2_1m" qview2,
"public"."t19_1m" qview3,
"public"."t4_1m" qview4
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
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t1_1m" qview1,
"public"."t2_1m" qview2,
"public"."t15_1m" qview3,
"public"."t20_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t1_1m" qview1,
"public"."t2_1m" qview2,
"public"."t15_1m" qview3,
"public"."t16_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t1_1m" qview1,
"public"."t2_1m" qview2,
"public"."t15_1m" qview3,
"public"."t12_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t2_1m" qview2,
"public"."t15_1m" qview3,
"public"."t8_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu2", qview3."stringu1", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t2_1m" qview2,
"public"."t15_1m" qview3,
"public"."t4_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t1_1m" qview1,
"public"."t2_1m" qview2,
"public"."t11_1m" qview3,
"public"."t20_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t1_1m" qview1,
"public"."t2_1m" qview2,
"public"."t11_1m" qview3,
"public"."t16_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t1_1m" qview1,
"public"."t2_1m" qview2,
"public"."t11_1m" qview3,
"public"."t12_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t2_1m" qview2,
"public"."t11_1m" qview3,
"public"."t8_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."string4", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t2_1m" qview2,
"public"."t11_1m" qview3,
"public"."t4_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
qview3."string4" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t1_1m" qview1,
"public"."t2_1m" qview2,
"public"."t7_1m" qview3,
"public"."t20_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t1_1m" qview1,
"public"."t2_1m" qview2,
"public"."t7_1m" qview3,
"public"."t16_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t1_1m" qview1,
"public"."t2_1m" qview2,
"public"."t7_1m" qview3,
"public"."t12_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t2_1m" qview2,
"public"."t7_1m" qview3,
"public"."t8_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t2_1m" qview2,
"public"."t7_1m" qview3,
"public"."t4_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."string4"
FROM
"public"."t1_1m" qview1,
"public"."t2_1m" qview2,
"public"."t3_1m" qview3,
"public"."t20_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu2", qview4."stringu1"
FROM
"public"."t1_1m" qview1,
"public"."t2_1m" qview2,
"public"."t3_1m" qview3,
"public"."t16_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."string4"
FROM
"public"."t1_1m" qview1,
"public"."t2_1m" qview2,
"public"."t3_1m" qview3,
"public"."t12_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu1" IS NOT NULL AND
qview4."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t2_1m" qview2,
"public"."t3_1m" qview3,
"public"."t8_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2", qview3."evenonepercent", qview3."stringu1", qview3."stringu2", qview4."evenonepercent", qview4."stringu1", qview4."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t2_1m" qview2,
"public"."t3_1m" qview3,
"public"."t4_1m" qview4
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
qview3."stringu1" IS NOT NULL AND
(qview1."unique2" = qview4."unique2") AND
((qview4."onepercent" >= 0) AND (qview4."onepercent" < 20)) AND
qview4."evenonepercent" IS NOT NULL AND
qview4."stringu2" IS NOT NULL AND
qview4."stringu1" IS NOT NULL
) SUB_QVIEW

) f_1
