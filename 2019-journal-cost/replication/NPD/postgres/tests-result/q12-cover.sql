--- Template Combination 1
SELECT DISTINCT * FROM
(
SELECT *
FROM (
SELECT 
   qview1."wlbNpdidWellbore" AS "x", 
   qview6."wlbTotalCoreLength" * 0.3048  AS "lenghtM", 
    qview5."cmpLongName" AS "company"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."company" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_core" qview7,
"public"."wellbore_core" qview8
WHERE 
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview3."wlbDrillingOperator" = qview4."cmpLongName") AND
qview4."cmpNpdidCompany" IS NOT NULL AND
(qview4."cmpNpdidCompany" = qview5."cmpNpdidCompany") AND
qview5."cmpLongName" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview6."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview7."wlbCoreNumber") AND
(qview6."wlbTotalCoreLength" = qview7."wlbTotalCoreLength") AND
(qview1."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
(qview1."wlbCoreNumber" = qview8."wlbCoreNumber") AND
(qview8."wlbCoreIntervalUom" = '[ft   ]') AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore")
UNION
SELECT 
   qview1."wlbNpdidWellbore" AS "x", 
   qview6."wlbTotalCoreLength" * 0.3048  AS "lenghtM", 
    qview5."cmpLongName" AS "company"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."company" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_core" qview7,
"public"."wellbore_core" qview8
WHERE 
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview3."wlbDrillingOperator" = qview4."cmpLongName") AND
qview4."cmpNpdidCompany" IS NOT NULL AND
(qview4."cmpNpdidCompany" = qview5."cmpNpdidCompany") AND
qview5."cmpLongName" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview6."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview7."wlbCoreNumber") AND
(qview6."wlbTotalCoreLength" = qview7."wlbTotalCoreLength") AND
(qview1."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
(qview1."wlbCoreNumber" = qview8."wlbCoreNumber") AND
(qview8."wlbCoreIntervalUom" = '[ft   ]') AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore")
UNION
SELECT 
   qview1."wlbNpdidWellbore" AS "x", 
    qview6."wlbTotalCoreLength"  AS "lenghtM", 
    qview5."cmpLongName" AS "company"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."company" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_core" qview7,
"public"."wellbore_core" qview8
WHERE 
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview3."wlbDrillingOperator" = qview4."cmpLongName") AND
qview4."cmpNpdidCompany" IS NOT NULL AND
(qview4."cmpNpdidCompany" = qview5."cmpNpdidCompany") AND
qview5."cmpLongName" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview6."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview7."wlbCoreNumber") AND
(qview6."wlbTotalCoreLength" = qview7."wlbTotalCoreLength") AND
(qview1."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
(qview1."wlbCoreNumber" = qview8."wlbCoreNumber") AND
(qview8."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore")
UNION
SELECT 
   qview1."wlbNpdidWellbore" AS "x", 
   qview6."wlbTotalCoreLength"  AS "lenghtM", 
    qview5."cmpLongName" AS "company"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."company" qview5,
"public"."wellbore_core" qview6,
"public"."wellbore_core" qview7,
"public"."wellbore_core" qview8
WHERE 
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview3."wlbDrillingOperator" = qview4."cmpLongName") AND
qview4."cmpNpdidCompany" IS NOT NULL AND
(qview4."cmpNpdidCompany" = qview5."cmpNpdidCompany") AND
qview5."cmpLongName" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview6."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview6."wlbNpdidWellbore") AND
qview6."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview7."wlbCoreNumber") AND
(qview6."wlbTotalCoreLength" = qview7."wlbTotalCoreLength") AND
(qview1."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
(qview1."wlbCoreNumber" = qview8."wlbCoreNumber") AND
(qview8."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore")
) SUB_QVIEW


) AS f1,
( 
SELECT DISTINCT *
FROM (
SELECT DISTINCT 
   qview1."wlbNpdidWellbore" AS "x", 
    qview1."wlbWellboreName" AS "wellbore", 
   qview2."wlbCompletionYear"  AS "year"
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_exploration_all" qview2
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL
UNION
SELECT DISTINCT 
   qview1."wlbNpdidWellbore" AS "x", 
    qview1."wlbWellboreName" AS "wellbore", 
   qview2."wlbCompletionYear"  AS "year"
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_shallow_all" qview2
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL
UNION
SELECT DISTINCT 
   qview1."wlbNpdidWellbore" AS "x", 
    qview1."wlbWellboreName" AS "wellbore", 
   qview2."wlbCompletionYear"  AS "year"
 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_development_all" qview2
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL
UNION
SELECT DISTINCT 
   qview1."wlbNpdidWellbore" AS "x", 
    qview1."wlbWellboreName" AS "wellbore", 
   qview2."wlbCompletionYear"  AS "year"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_exploration_all" qview2
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL
UNION
SELECT DISTINCT 
   qview1."wlbNpdidWellbore" AS "x", 
    qview1."wlbWellboreName" AS "wellbore", 
   qview2."wlbCompletionYear"  AS "year"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_shallow_all" qview2
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL
UNION
SELECT DISTINCT 
   qview1."wlbNpdidWellbore" AS "x", 
    qview1."wlbWellboreName" AS "wellbore", 
   qview2."wlbCompletionYear"  AS "year"
 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_development_all" qview2
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL
UNION
SELECT DISTINCT 
   qview1."wlbNpdidWellbore" AS "x", 
    qview1."wlbWellboreName" AS "wellbore", 
   qview2."wlbCompletionYear"  AS "year"
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_exploration_all" qview2
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL
UNION
SELECT DISTINCT 
   qview1."wlbNpdidWellbore" AS "x", 
    qview1."wlbWellboreName" AS "wellbore", 
   qview1."wlbCompletionYear"  AS "year"
 FROM 
"public"."wellbore_shallow_all" qview1
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL
UNION
SELECT DISTINCT 
   qview1."wlbNpdidWellbore" AS "x", 
    qview1."wlbWellboreName" AS "wellbore", 
   qview2."wlbCompletionYear"  AS "year"
 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_development_all" qview2
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL
UNION
SELECT DISTINCT 
   qview1."wlbNpdidWellbore" AS "x", 
    qview1."wlbWellboreName" AS "wellbore", 
   qview2."wlbCompletionYear"  AS "year"
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_exploration_all" qview2
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL
UNION
SELECT DISTINCT 
   qview1."wlbNpdidWellbore" AS "x", 
    qview1."wlbWellboreName" AS "wellbore", 
   qview2."wlbCompletionYear"  AS "year"
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_shallow_all" qview2
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL
UNION
SELECT DISTINCT 
   qview1."wlbNpdidWellbore" AS "x", 
    qview1."wlbWellboreName" AS "wellbore", 
   qview2."wlbCompletionYear"  AS "year"
 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_development_all" qview2
WHERE 
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL
) SUB_QVIEW

) AS f2
WHERE f1.x = f2.x
