SELECT DISTINCT *
FROM (
SELECT DISTINCT 
    qview3."wlbWellboreName" AS "wellbore", 
    qview9."wlbTotalCoreLength"  AS "lenghtM", 
    qview7."cmpLongName" AS "company", 
    qview4."wlbCompletionYear"  AS "year"
 FROM 
"wellbore_core" qview1,
"wellbore_npdid_overview" qview2,
"wellbore_development_all" qview3,
"wellbore_exploration_all" qview4,
"wellbore_exploration_all" qview5,
"company" qview6,
"company" qview7,
"wellbore_core" qview8,
"wellbore_core" qview9,
"wellbore_core" qview10
WHERE 
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
qview6."cmpNpdidCompany" IS NOT NULL AND
(qview6."cmpNpdidCompany" = qview7."cmpNpdidCompany") AND
qview7."cmpLongName" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview8."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview9."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
qview9."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview10."wlbCoreNumber") AND
(qview10."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore") 

UNION
SELECT DISTINCT 
    qview3."wlbWellboreName" AS "wellbore", 
    qview9."wlbTotalCoreLength"  AS "lenghtM", 
    qview7."cmpLongName" AS "company", 
    qview4."wlbCompletionYear"  AS "year"
 FROM 
"wellbore_core" qview1,
"wellbore_npdid_overview" qview2,
"wellbore_development_all" qview3,
"wellbore_exploration_all" qview4,
"wellbore_development_all" qview5,
"company" qview6,
"company" qview7,
"wellbore_core" qview8,
"wellbore_core" qview9,
"wellbore_core" qview10
WHERE 
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
qview6."cmpNpdidCompany" IS NOT NULL AND
(qview6."cmpNpdidCompany" = qview7."cmpNpdidCompany") AND
qview7."cmpLongName" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview8."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview9."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
qview9."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview10."wlbCoreNumber") AND
(qview10."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore") 
UNION
SELECT DISTINCT 
    qview3."wlbWellboreName" AS "wellbore", 
    qview9."wlbTotalCoreLength"  AS "lenghtM", 
    qview7."cmpLongName" AS "company", 
    qview4."wlbCompletionYear"  AS "year"
 FROM 
"wellbore_core" qview1,
"wellbore_npdid_overview" qview2,
"wellbore_development_all" qview3,
"wellbore_shallow_all" qview4,
"wellbore_exploration_all" qview5,
"company" qview6,
"company" qview7,
"wellbore_core" qview8,
"wellbore_core" qview9,
"wellbore_core" qview10
WHERE 
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
qview6."cmpNpdidCompany" IS NOT NULL AND
(qview6."cmpNpdidCompany" = qview7."cmpNpdidCompany") AND
qview7."cmpLongName" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview8."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview9."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
qview9."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview10."wlbCoreNumber") AND
(qview10."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore") 
UNION
SELECT DISTINCT 
    qview3."wlbWellboreName" AS "wellbore", 
    qview9."wlbTotalCoreLength"  AS "lenghtM", 
    qview7."cmpLongName" AS "company", 
    qview4."wlbCompletionYear"  AS "year"
 FROM 
"wellbore_core" qview1,
"wellbore_npdid_overview" qview2,
"wellbore_development_all" qview3,
"wellbore_shallow_all" qview4,
"wellbore_development_all" qview5,
"company" qview6,
"company" qview7,
"wellbore_core" qview8,
"wellbore_core" qview9,
"wellbore_core" qview10
WHERE 
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
qview6."cmpNpdidCompany" IS NOT NULL AND
(qview6."cmpNpdidCompany" = qview7."cmpNpdidCompany") AND
qview7."cmpLongName" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview8."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview9."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
qview9."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview10."wlbCoreNumber") AND
(qview10."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore") 
UNION
SELECT DISTINCT 
    qview3."wlbWellboreName" AS "wellbore", 
    qview9."wlbTotalCoreLength"  AS "lenghtM", 
    qview7."cmpLongName" AS "company", 
    qview4."wlbCompletionYear"  AS "year"
 FROM 
"wellbore_core" qview1,
"wellbore_npdid_overview" qview2,
"wellbore_development_all" qview3,
"wellbore_development_all" qview4,
"wellbore_exploration_all" qview5,
"company" qview6,
"company" qview7,
"wellbore_core" qview8,
"wellbore_core" qview9,
"wellbore_core" qview10
WHERE 
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
qview6."cmpNpdidCompany" IS NOT NULL AND
(qview6."cmpNpdidCompany" = qview7."cmpNpdidCompany") AND
qview7."cmpLongName" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview8."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview9."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
qview9."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview10."wlbCoreNumber") AND
(qview10."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore") 
UNION
SELECT DISTINCT 
    qview3."wlbWellboreName" AS "wellbore", 
    qview9."wlbTotalCoreLength"  AS "lenghtM", 
    qview7."cmpLongName" AS "company", 
    qview4."wlbCompletionYear"  AS "year"
 FROM 
"wellbore_core" qview1,
"wellbore_npdid_overview" qview2,
"wellbore_development_all" qview3,
"wellbore_development_all" qview4,
"wellbore_development_all" qview5,
"company" qview6,
"company" qview7,
"wellbore_core" qview8,
"wellbore_core" qview9,
"wellbore_core" qview10
WHERE 
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
qview6."cmpNpdidCompany" IS NOT NULL AND
(qview6."cmpNpdidCompany" = qview7."cmpNpdidCompany") AND
qview7."cmpLongName" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview8."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview9."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
qview9."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview10."wlbCoreNumber") AND
(qview10."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore") 
UNION
SELECT DISTINCT 
    qview3."wlbWellboreName" AS "wellbore", 
    qview9."wlbTotalCoreLength"  AS "lenghtM", 
    qview7."cmpLongName" AS "company", 
    qview4."wlbCompletionYear"  AS "year"
 FROM 
"wellbore_core" qview1,
"wellbore_npdid_overview" qview2,
"wellbore_exploration_all" qview3,
"wellbore_exploration_all" qview4,
"wellbore_exploration_all" qview5,
"company" qview6,
"company" qview7,
"wellbore_core" qview8,
"wellbore_core" qview9,
"wellbore_core" qview10
WHERE 
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
qview6."cmpNpdidCompany" IS NOT NULL AND
(qview6."cmpNpdidCompany" = qview7."cmpNpdidCompany") AND
qview7."cmpLongName" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview8."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview9."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
qview9."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview10."wlbCoreNumber") AND
(qview10."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore")
UNION
SELECT DISTINCT 
    qview3."wlbWellboreName" AS "wellbore", 
    qview9."wlbTotalCoreLength"  AS "lenghtM", 
    qview7."cmpLongName" AS "company", 
    qview4."wlbCompletionYear"  AS "year"
 FROM 
"wellbore_core" qview1,
"wellbore_npdid_overview" qview2,
"wellbore_exploration_all" qview3,
"wellbore_exploration_all" qview4,
"wellbore_development_all" qview5,
"company" qview6,
"company" qview7,
"wellbore_core" qview8,
"wellbore_core" qview9,
"wellbore_core" qview10
WHERE 
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
qview6."cmpNpdidCompany" IS NOT NULL AND
(qview6."cmpNpdidCompany" = qview7."cmpNpdidCompany") AND
qview7."cmpLongName" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview8."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview9."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
qview9."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview10."wlbCoreNumber") AND
(qview10."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore") 
UNION
SELECT DISTINCT 
    qview3."wlbWellboreName" AS "wellbore", 
    qview9."wlbTotalCoreLength"  AS "lenghtM", 
    qview7."cmpLongName" AS "company", 
    qview4."wlbCompletionYear"  AS "year"
 FROM 
"wellbore_core" qview1,
"wellbore_npdid_overview" qview2,
"wellbore_exploration_all" qview3,
"wellbore_shallow_all" qview4,
"wellbore_exploration_all" qview5,
"company" qview6,
"company" qview7,
"wellbore_core" qview8,
"wellbore_core" qview9,
"wellbore_core" qview10
WHERE 
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
qview6."cmpNpdidCompany" IS NOT NULL AND
(qview6."cmpNpdidCompany" = qview7."cmpNpdidCompany") AND
qview7."cmpLongName" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview8."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview9."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
qview9."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview10."wlbCoreNumber") AND
(qview10."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore") 
UNION
SELECT DISTINCT 
    qview3."wlbWellboreName" AS "wellbore", 
    qview9."wlbTotalCoreLength"  AS "lenghtM", 
    qview7."cmpLongName" AS "company", 
    qview4."wlbCompletionYear"  AS "year"
 FROM 
"wellbore_core" qview1,
"wellbore_npdid_overview" qview2,
"wellbore_exploration_all" qview3,
"wellbore_shallow_all" qview4,
"wellbore_development_all" qview5,
"company" qview6,
"company" qview7,
"wellbore_core" qview8,
"wellbore_core" qview9,
"wellbore_core" qview10
WHERE 
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
qview6."cmpNpdidCompany" IS NOT NULL AND
(qview6."cmpNpdidCompany" = qview7."cmpNpdidCompany") AND
qview7."cmpLongName" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview8."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview9."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
qview9."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview10."wlbCoreNumber") AND
(qview10."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore") 
UNION
SELECT DISTINCT 
    qview3."wlbWellboreName" AS "wellbore", 
    qview9."wlbTotalCoreLength"  AS "lenghtM", 
    qview7."cmpLongName" AS "company", 
    qview4."wlbCompletionYear"  AS "year"
 FROM 
"wellbore_core" qview1,
"wellbore_npdid_overview" qview2,
"wellbore_exploration_all" qview3,
"wellbore_development_all" qview4,
"wellbore_exploration_all" qview5,
"company" qview6,
"company" qview7,
"wellbore_core" qview8,
"wellbore_core" qview9,
"wellbore_core" qview10
WHERE 
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
qview6."cmpNpdidCompany" IS NOT NULL AND
(qview6."cmpNpdidCompany" = qview7."cmpNpdidCompany") AND
qview7."cmpLongName" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview8."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview9."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
qview9."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview10."wlbCoreNumber") AND
(qview10."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore") 
UNION
SELECT DISTINCT 
    qview3."wlbWellboreName" AS "wellbore", 
    qview9."wlbTotalCoreLength"  AS "lenghtM", 
    qview7."cmpLongName" AS "company", 
    qview4."wlbCompletionYear"  AS "year"
 FROM 
"wellbore_core" qview1,
"wellbore_npdid_overview" qview2,
"wellbore_exploration_all" qview3,
"wellbore_development_all" qview4,
"wellbore_development_all" qview5,
"company" qview6,
"company" qview7,
"wellbore_core" qview8,
"wellbore_core" qview9,
"wellbore_core" qview10
WHERE 
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
qview6."cmpNpdidCompany" IS NOT NULL AND
(qview6."cmpNpdidCompany" = qview7."cmpNpdidCompany") AND
qview7."cmpLongName" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview8."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview9."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
qview9."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview10."wlbCoreNumber") AND
(qview10."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore") 
UNION
SELECT DISTINCT 
    qview3."wlbWellboreName" AS "wellbore", 
    qview9."wlbTotalCoreLength"  AS "lenghtM", 
    qview7."cmpLongName" AS "company", 
    qview4."wlbCompletionYear"  AS "year"
 FROM 
"wellbore_core" qview1,
"wellbore_npdid_overview" qview2,
"wellbore_shallow_all" qview3,
"wellbore_exploration_all" qview4,
"wellbore_exploration_all" qview5,
"company" qview6,
"company" qview7,
"wellbore_core" qview8,
"wellbore_core" qview9,
"wellbore_core" qview10
WHERE 
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
qview6."cmpNpdidCompany" IS NOT NULL AND
(qview6."cmpNpdidCompany" = qview7."cmpNpdidCompany") AND
qview7."cmpLongName" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview8."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview9."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
qview9."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview10."wlbCoreNumber") AND
(qview10."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore") 
UNION
SELECT DISTINCT 
    qview3."wlbWellboreName" AS "wellbore", 
    qview9."wlbTotalCoreLength"  AS "lenghtM", 
    qview7."cmpLongName" AS "company", 
    qview4."wlbCompletionYear"  AS "year"
 FROM 
"wellbore_core" qview1,
"wellbore_npdid_overview" qview2,
"wellbore_shallow_all" qview3,
"wellbore_exploration_all" qview4,
"wellbore_development_all" qview5,
"company" qview6,
"company" qview7,
"wellbore_core" qview8,
"wellbore_core" qview9,
"wellbore_core" qview10
WHERE 
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
qview6."cmpNpdidCompany" IS NOT NULL AND
(qview6."cmpNpdidCompany" = qview7."cmpNpdidCompany") AND
qview7."cmpLongName" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview8."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview9."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
qview9."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview10."wlbCoreNumber") AND
(qview10."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore") 
UNION
SELECT DISTINCT 
    qview3."wlbWellboreName" AS "wellbore", 
    qview8."wlbTotalCoreLength"  AS "lenghtM", 
    qview6."cmpLongName" AS "company", 
    qview3."wlbCompletionYear"  AS "year"
 FROM 
"wellbore_core" qview1,
"wellbore_npdid_overview" qview2,
"wellbore_shallow_all" qview3,
"wellbore_exploration_all" qview4,
"company" qview5,
"company" qview6,
"wellbore_core" qview7,
"wellbore_core" qview8,
"wellbore_core" qview9
WHERE 
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview4."wlbDrillingOperator" = qview5."cmpLongName") AND
qview5."cmpNpdidCompany" IS NOT NULL AND
(qview5."cmpNpdidCompany" = qview6."cmpNpdidCompany") AND
qview6."cmpLongName" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview7."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
qview7."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview8."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview9."wlbCoreNumber") AND
(qview9."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") 
UNION
SELECT DISTINCT 
    qview3."wlbWellboreName" AS "wellbore", 
    qview8."wlbTotalCoreLength"  AS "lenghtM", 
    qview6."cmpLongName" AS "company", 
    qview3."wlbCompletionYear"  AS "year"
 FROM 
"wellbore_core" qview1,
"wellbore_npdid_overview" qview2,
"wellbore_shallow_all" qview3,
"wellbore_development_all" qview4,
"company" qview5,
"company" qview6,
"wellbore_core" qview7,
"wellbore_core" qview8,
"wellbore_core" qview9
WHERE 
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview4."wlbDrillingOperator" = qview5."cmpLongName") AND
qview5."cmpNpdidCompany" IS NOT NULL AND
(qview5."cmpNpdidCompany" = qview6."cmpNpdidCompany") AND
qview6."cmpLongName" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview7."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
qview7."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview8."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview9."wlbCoreNumber") AND
(qview9."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") 
UNION
SELECT DISTINCT 
    qview3."wlbWellboreName" AS "wellbore", 
    qview9."wlbTotalCoreLength"  AS "lenghtM", 
    qview7."cmpLongName" AS "company", 
    qview4."wlbCompletionYear"  AS "year"
 FROM 
"wellbore_core" qview1,
"wellbore_npdid_overview" qview2,
"wellbore_shallow_all" qview3,
"wellbore_development_all" qview4,
"wellbore_exploration_all" qview5,
"company" qview6,
"company" qview7,
"wellbore_core" qview8,
"wellbore_core" qview9,
"wellbore_core" qview10
WHERE 
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
qview6."cmpNpdidCompany" IS NOT NULL AND
(qview6."cmpNpdidCompany" = qview7."cmpNpdidCompany") AND
qview7."cmpLongName" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview8."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview9."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
qview9."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview10."wlbCoreNumber") AND
(qview10."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore") 
UNION
SELECT DISTINCT 
    qview3."wlbWellboreName" AS "wellbore", 
    qview9."wlbTotalCoreLength"  AS "lenghtM", 
    qview7."cmpLongName" AS "company", 
    qview4."wlbCompletionYear"  AS "year"
 FROM 
"wellbore_core" qview1,
"wellbore_npdid_overview" qview2,
"wellbore_shallow_all" qview3,
"wellbore_development_all" qview4,
"wellbore_development_all" qview5,
"company" qview6,
"company" qview7,
"wellbore_core" qview8,
"wellbore_core" qview9,
"wellbore_core" qview10
WHERE 
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
qview6."cmpNpdidCompany" IS NOT NULL AND
(qview6."cmpNpdidCompany" = qview7."cmpNpdidCompany") AND
qview7."cmpLongName" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview8."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview9."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
qview9."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview10."wlbCoreNumber") AND
(qview10."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore") 
UNION
SELECT DISTINCT 
    qview3."wlbWellboreName" AS "wellbore", 
    qview9."wlbTotalCoreLength"  AS "lenghtM", 
    qview7."cmpLongName" AS "company", 
    qview4."wlbCompletionYear"  AS "year"
 FROM 
"wellbore_core" qview1,
"wellbore_npdid_overview" qview2,
"wellbore_npdid_overview" qview3,
"wellbore_exploration_all" qview4,
"wellbore_exploration_all" qview5,
"company" qview6,
"company" qview7,
"wellbore_core" qview8,
"wellbore_core" qview9,
"wellbore_core" qview10
WHERE 
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
qview6."cmpNpdidCompany" IS NOT NULL AND
(qview6."cmpNpdidCompany" = qview7."cmpNpdidCompany") AND
qview7."cmpLongName" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview8."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview9."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
qview9."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview10."wlbCoreNumber") AND
(qview10."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore") 
UNION
SELECT DISTINCT 
    qview3."wlbWellboreName" AS "wellbore", 
    qview9."wlbTotalCoreLength"  AS "lenghtM", 
    qview7."cmpLongName" AS "company", 
    qview4."wlbCompletionYear"  AS "year"
 FROM 
"wellbore_core" qview1,
"wellbore_npdid_overview" qview2,
"wellbore_npdid_overview" qview3,
"wellbore_exploration_all" qview4,
"wellbore_development_all" qview5,
"company" qview6,
"company" qview7,
"wellbore_core" qview8,
"wellbore_core" qview9,
"wellbore_core" qview10
WHERE 
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
qview6."cmpNpdidCompany" IS NOT NULL AND
(qview6."cmpNpdidCompany" = qview7."cmpNpdidCompany") AND
qview7."cmpLongName" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview8."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview9."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
qview9."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview10."wlbCoreNumber") AND
(qview10."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore") 
UNION
SELECT DISTINCT 
    qview3."wlbWellboreName" AS "wellbore", 
    qview9."wlbTotalCoreLength"  AS "lenghtM", 
    qview7."cmpLongName" AS "company", 
    qview4."wlbCompletionYear"  AS "year"
 FROM 
"wellbore_core" qview1,
"wellbore_npdid_overview" qview2,
"wellbore_npdid_overview" qview3,
"wellbore_shallow_all" qview4,
"wellbore_exploration_all" qview5,
"company" qview6,
"company" qview7,
"wellbore_core" qview8,
"wellbore_core" qview9,
"wellbore_core" qview10
WHERE 
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
qview6."cmpNpdidCompany" IS NOT NULL AND
(qview6."cmpNpdidCompany" = qview7."cmpNpdidCompany") AND
qview7."cmpLongName" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview8."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview9."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
qview9."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview10."wlbCoreNumber") AND
(qview10."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore") 
UNION
SELECT DISTINCT 
    qview3."wlbWellboreName" AS "wellbore", 
    qview9."wlbTotalCoreLength"  AS "lenghtM", 
    qview7."cmpLongName" AS "company", 
    qview4."wlbCompletionYear"  AS "year"
 FROM 
"wellbore_core" qview1,
"wellbore_npdid_overview" qview2,
"wellbore_npdid_overview" qview3,
"wellbore_shallow_all" qview4,
"wellbore_development_all" qview5,
"company" qview6,
"company" qview7,
"wellbore_core" qview8,
"wellbore_core" qview9,
"wellbore_core" qview10
WHERE 
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
qview6."cmpNpdidCompany" IS NOT NULL AND
(qview6."cmpNpdidCompany" = qview7."cmpNpdidCompany") AND
qview7."cmpLongName" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview8."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview9."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
qview9."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview10."wlbCoreNumber") AND
(qview10."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore") 
UNION
SELECT DISTINCT 
    qview3."wlbWellboreName" AS "wellbore", 
    qview9."wlbTotalCoreLength"  AS "lenghtM", 
    qview7."cmpLongName" AS "company", 
    qview4."wlbCompletionYear"  AS "year"
 FROM 
"wellbore_core" qview1,
"wellbore_npdid_overview" qview2,
"wellbore_npdid_overview" qview3,
"wellbore_development_all" qview4,
"wellbore_exploration_all" qview5,
"company" qview6,
"company" qview7,
"wellbore_core" qview8,
"wellbore_core" qview9,
"wellbore_core" qview10
WHERE 
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
qview6."cmpNpdidCompany" IS NOT NULL AND
(qview6."cmpNpdidCompany" = qview7."cmpNpdidCompany") AND
qview7."cmpLongName" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview8."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview9."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
qview9."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview10."wlbCoreNumber") AND
(qview10."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore") 
UNION
SELECT DISTINCT 
    qview3."wlbWellboreName" AS "wellbore", 
    qview9."wlbTotalCoreLength"  AS "lenghtM", 
    qview7."cmpLongName" AS "company", 
    qview4."wlbCompletionYear"  AS "year"
 FROM 
"wellbore_core" qview1,
"wellbore_npdid_overview" qview2,
"wellbore_npdid_overview" qview3,
"wellbore_development_all" qview4,
"wellbore_development_all" qview5,
"company" qview6,
"company" qview7,
"wellbore_core" qview8,
"wellbore_core" qview9,
"wellbore_core" qview10
WHERE 
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbCoreNumber" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
qview6."cmpNpdidCompany" IS NOT NULL AND
(qview6."cmpNpdidCompany" = qview7."cmpNpdidCompany") AND
qview7."cmpLongName" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview8."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview9."wlbCoreNumber") AND
(qview1."wlbNpdidWellbore" = qview9."wlbNpdidWellbore") AND
qview9."wlbTotalCoreLength" IS NOT NULL AND
(qview1."wlbCoreNumber" = qview10."wlbCoreNumber") AND
(qview10."wlbCoreIntervalUom" = '[m   ]') AND
(qview1."wlbNpdidWellbore" = qview10."wlbNpdidWellbore")

) SUB_QVIEW;
