SELECT * FROM (SELECT *
FROM (
SELECT qview1."unique2", qview1."evenonepercent", qview1."string4", qview1."stringu1", qview2."evenonepercent", qview2."string4", qview2."stringu1"
FROM
"public"."t17_1m" qview1,
"public"."t18_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."string4", qview1."stringu1", qview2."evenonepercent", qview2."stringu2", qview2."string4"
FROM
"public"."t17_1m" qview1,
"public"."t14_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."string4", qview1."stringu1", qview2."evenonepercent", qview2."stringu2", qview2."stringu1"
FROM
"public"."t17_1m" qview1,
"public"."t10_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."string4", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."string4"
FROM
"public"."t17_1m" qview1,
"public"."t6_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."string4", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."stringu2"
FROM
"public"."t17_1m" qview1,
"public"."t2_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."string4", qview2."stringu1"
FROM
"public"."t13_1m" qview1,
"public"."t18_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."string4"
FROM
"public"."t13_1m" qview1,
"public"."t14_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."stringu1"
FROM
"public"."t13_1m" qview1,
"public"."t10_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."string4"
FROM
"public"."t13_1m" qview1,
"public"."t6_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2"
FROM
"public"."t13_1m" qview1,
"public"."t2_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."string4", qview2."stringu1"
FROM
"public"."t9_1m" qview1,
"public"."t18_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu2", qview2."string4"
FROM
"public"."t9_1m" qview1,
"public"."t14_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu2", qview2."stringu1"
FROM
"public"."t9_1m" qview1,
"public"."t10_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."string4"
FROM
"public"."t9_1m" qview1,
"public"."t6_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu2", qview1."stringu1", qview2."evenonepercent", qview2."stringu1", qview2."stringu2"
FROM
"public"."t9_1m" qview1,
"public"."t2_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."string4", qview2."stringu1"
FROM
"public"."t5_1m" qview1,
"public"."t18_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."string4"
FROM
"public"."t5_1m" qview1,
"public"."t14_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu2", qview2."stringu1"
FROM
"public"."t5_1m" qview1,
"public"."t10_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."string4"
FROM
"public"."t5_1m" qview1,
"public"."t6_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."string4", qview2."evenonepercent", qview2."stringu1", qview2."stringu2"
FROM
"public"."t5_1m" qview1,
"public"."t2_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."string4", qview2."stringu1"
FROM
"public"."t1_1m" qview1,
"public"."t18_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."string4"
FROM
"public"."t1_1m" qview1,
"public"."t14_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1"
FROM
"public"."t1_1m" qview1,
"public"."t10_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."string4"
FROM
"public"."t1_1m" qview1,
"public"."t6_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview1."evenonepercent", qview1."stringu1", qview1."stringu2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t2_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL
) SUB_QVIEW

) f_1,(SELECT *
FROM (
SELECT qview1."unique2", qview2."evenonepercent", qview2."string4", qview2."stringu1"
FROM
"public"."t17_1m" qview1,
"public"."t19_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview2."evenonepercent", qview2."stringu2", qview2."string4"
FROM
"public"."t17_1m" qview1,
"public"."t15_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1"
FROM
"public"."t17_1m" qview1,
"public"."t11_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview2."evenonepercent", qview2."stringu1", qview2."string4"
FROM
"public"."t17_1m" qview1,
"public"."t7_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2"
FROM
"public"."t17_1m" qview1,
"public"."t3_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview2."evenonepercent", qview2."string4", qview2."stringu1"
FROM
"public"."t13_1m" qview1,
"public"."t19_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview2."evenonepercent", qview2."stringu2", qview2."string4"
FROM
"public"."t13_1m" qview1,
"public"."t15_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1"
FROM
"public"."t13_1m" qview1,
"public"."t11_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview2."evenonepercent", qview2."stringu1", qview2."string4"
FROM
"public"."t13_1m" qview1,
"public"."t7_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2"
FROM
"public"."t13_1m" qview1,
"public"."t3_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview2."evenonepercent", qview2."string4", qview2."stringu1"
FROM
"public"."t9_1m" qview1,
"public"."t19_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview2."evenonepercent", qview2."stringu2", qview2."string4"
FROM
"public"."t9_1m" qview1,
"public"."t15_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1"
FROM
"public"."t9_1m" qview1,
"public"."t11_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview2."evenonepercent", qview2."stringu1", qview2."string4"
FROM
"public"."t9_1m" qview1,
"public"."t7_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2"
FROM
"public"."t9_1m" qview1,
"public"."t3_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview2."evenonepercent", qview2."string4", qview2."stringu1"
FROM
"public"."t5_1m" qview1,
"public"."t19_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview2."evenonepercent", qview2."stringu2", qview2."string4"
FROM
"public"."t5_1m" qview1,
"public"."t15_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1"
FROM
"public"."t5_1m" qview1,
"public"."t11_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview2."evenonepercent", qview2."stringu1", qview2."string4"
FROM
"public"."t5_1m" qview1,
"public"."t7_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2"
FROM
"public"."t5_1m" qview1,
"public"."t3_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview2."evenonepercent", qview2."string4", qview2."stringu1"
FROM
"public"."t1_1m" qview1,
"public"."t19_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview2."evenonepercent", qview2."stringu2", qview2."string4"
FROM
"public"."t1_1m" qview1,
"public"."t15_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1"
FROM
"public"."t1_1m" qview1,
"public"."t11_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview2."evenonepercent", qview2."stringu1", qview2."string4"
FROM
"public"."t1_1m" qview1,
"public"."t7_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t3_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL
) SUB_QVIEW

) f_2,(SELECT *
FROM (
SELECT qview1."unique2", qview2."evenonepercent", qview2."string4", qview2."stringu1"
FROM
"public"."t17_1m" qview1,
"public"."t20_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview2."evenonepercent", qview2."stringu2", qview2."string4"
FROM
"public"."t17_1m" qview1,
"public"."t16_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1"
FROM
"public"."t17_1m" qview1,
"public"."t12_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview2."evenonepercent", qview2."stringu1", qview2."string4"
FROM
"public"."t17_1m" qview1,
"public"."t8_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2"
FROM
"public"."t17_1m" qview1,
"public"."t4_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview2."evenonepercent", qview2."string4", qview2."stringu1"
FROM
"public"."t13_1m" qview1,
"public"."t20_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview2."evenonepercent", qview2."stringu2", qview2."string4"
FROM
"public"."t13_1m" qview1,
"public"."t16_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1"
FROM
"public"."t13_1m" qview1,
"public"."t12_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview2."evenonepercent", qview2."stringu1", qview2."string4"
FROM
"public"."t13_1m" qview1,
"public"."t8_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2"
FROM
"public"."t13_1m" qview1,
"public"."t4_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview2."evenonepercent", qview2."string4", qview2."stringu1"
FROM
"public"."t9_1m" qview1,
"public"."t20_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview2."evenonepercent", qview2."stringu2", qview2."string4"
FROM
"public"."t9_1m" qview1,
"public"."t16_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1"
FROM
"public"."t9_1m" qview1,
"public"."t12_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview2."evenonepercent", qview2."stringu1", qview2."string4"
FROM
"public"."t9_1m" qview1,
"public"."t8_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2"
FROM
"public"."t9_1m" qview1,
"public"."t4_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview2."evenonepercent", qview2."string4", qview2."stringu1"
FROM
"public"."t5_1m" qview1,
"public"."t20_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview2."evenonepercent", qview2."stringu2", qview2."string4"
FROM
"public"."t5_1m" qview1,
"public"."t16_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1"
FROM
"public"."t5_1m" qview1,
"public"."t12_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview2."evenonepercent", qview2."stringu1", qview2."string4"
FROM
"public"."t5_1m" qview1,
"public"."t8_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2"
FROM
"public"."t5_1m" qview1,
"public"."t4_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."string4" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview2."evenonepercent", qview2."string4", qview2."stringu1"
FROM
"public"."t1_1m" qview1,
"public"."t20_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview2."evenonepercent", qview2."stringu2", qview2."string4"
FROM
"public"."t1_1m" qview1,
"public"."t16_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview2."evenonepercent", qview2."stringu2", qview2."stringu1"
FROM
"public"."t1_1m" qview1,
"public"."t12_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL
UNION
SELECT qview1."unique2", qview2."evenonepercent", qview2."stringu1", qview2."string4"
FROM
"public"."t1_1m" qview1,
"public"."t8_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu1" IS NOT NULL AND
qview2."string4" IS NOT NULL
UNION
SELECT qview1."unique2", qview2."evenonepercent", qview2."stringu1", qview2."stringu2"
FROM
"public"."t1_1m" qview1,
"public"."t4_1m" qview2
WHERE
((qview1."onepercent" >= 0) AND (qview1."onepercent" < 20)) AND
qview1."evenonepercent" IS NOT NULL AND
qview1."stringu2" IS NOT NULL AND
qview1."stringu1" IS NOT NULL AND
qview1."unique2" IS NOT NULL AND
(qview1."unique2" = qview2."unique2") AND
((qview2."onepercent" >= 10) AND (qview2."onepercent" < 30)) AND
qview2."evenonepercent" IS NOT NULL AND
qview2."stringu2" IS NOT NULL AND
qview2."stringu1" IS NOT NULL
) SUB_QVIEW

) f_3
WHERE f_1."unique2" = f_2."unique2" AND f_1."unique2" = f_3."unique2" AND f_2."unique2" = f_3."unique2"
