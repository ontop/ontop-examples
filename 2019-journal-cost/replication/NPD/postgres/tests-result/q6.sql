SELECT DISTINCT * 
FROM (
SELECT DISTINCT 
   
   qview1."wlbNpdidWellbore" AS "x", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   qview6."cmpNpdidCompany" AS "y", 
   7 AS "companyQuestType", NULL AS "companyLang", qview7."cmpLongName" AS "company", 
   5 AS "lQuestType", NULL AS "lLang", CAST(qview8."lsuCoreLenght" AS VARCHAR(10485760)) AS "l"
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_development_all" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6,
"public"."company" qview7,
"public"."strat_litho_wellbore_core" qview8
WHERE 
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
qview6."cmpNpdidCompany" IS NOT NULL AND
(qview6."cmpNpdidCompany" = qview7."cmpNpdidCompany") AND
qview7."cmpLongName" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview8."lsuNpdidLithoStrat") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."lsuCoreLenght" IS NOT NULL
UNION
SELECT DISTINCT 
   
   qview1."wlbNpdidWellbore" AS "x", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   qview6."cmpNpdidCompany" AS "y", 
   7 AS "companyQuestType", NULL AS "companyLang", qview7."cmpLongName" AS "company", 
   5 AS "lQuestType", NULL AS "lLang", CAST(qview8."lsuCoreLenght" AS VARCHAR(10485760)) AS "l"
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_development_all" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6,
"public"."company" qview7,
"public"."strat_litho_wellbore_core" qview8
WHERE 
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
qview6."cmpNpdidCompany" IS NOT NULL AND
(qview6."cmpNpdidCompany" = qview7."cmpNpdidCompany") AND
qview7."cmpLongName" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview8."lsuNpdidLithoStrat") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."lsuCoreLenght" IS NOT NULL
UNION
SELECT DISTINCT 
   
   qview1."wlbNpdidWellbore" AS "x", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   qview6."cmpNpdidCompany" AS "y", 
   7 AS "companyQuestType", NULL AS "companyLang", qview7."cmpLongName" AS "company", 
   5 AS "lQuestType", NULL AS "lLang", CAST(qview8."lsuCoreLenght" AS VARCHAR(10485760)) AS "l"
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_development_all" qview3,
"public"."wellbore_shallow_all" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6,
"public"."company" qview7,
"public"."strat_litho_wellbore_core" qview8
WHERE 
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
qview6."cmpNpdidCompany" IS NOT NULL AND
(qview6."cmpNpdidCompany" = qview7."cmpNpdidCompany") AND
qview7."cmpLongName" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview8."lsuNpdidLithoStrat") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."lsuCoreLenght" IS NOT NULL
UNION
SELECT DISTINCT 
   
   qview1."wlbNpdidWellbore" AS "x", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   qview6."cmpNpdidCompany" AS "y", 
   7 AS "companyQuestType", NULL AS "companyLang", qview7."cmpLongName" AS "company", 
   5 AS "lQuestType", NULL AS "lLang", CAST(qview8."lsuCoreLenght" AS VARCHAR(10485760)) AS "l"
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_development_all" qview3,
"public"."wellbore_shallow_all" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6,
"public"."company" qview7,
"public"."strat_litho_wellbore_core" qview8
WHERE 
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
qview6."cmpNpdidCompany" IS NOT NULL AND
(qview6."cmpNpdidCompany" = qview7."cmpNpdidCompany") AND
qview7."cmpLongName" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview8."lsuNpdidLithoStrat") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."lsuCoreLenght" IS NOT NULL
UNION
SELECT DISTINCT 
   
   qview1."wlbNpdidWellbore" AS "x", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   qview6."cmpNpdidCompany" AS "y", 
   7 AS "companyQuestType", NULL AS "companyLang", qview7."cmpLongName" AS "company", 
   5 AS "lQuestType", NULL AS "lLang", CAST(qview8."lsuCoreLenght" AS VARCHAR(10485760)) AS "l"
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_development_all" qview3,
"public"."wellbore_development_all" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6,
"public"."company" qview7,
"public"."strat_litho_wellbore_core" qview8
WHERE 
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
qview6."cmpNpdidCompany" IS NOT NULL AND
(qview6."cmpNpdidCompany" = qview7."cmpNpdidCompany") AND
qview7."cmpLongName" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview8."lsuNpdidLithoStrat") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."lsuCoreLenght" IS NOT NULL
UNION
SELECT DISTINCT 
   
   qview1."wlbNpdidWellbore" AS "x", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   qview6."cmpNpdidCompany" AS "y", 
   7 AS "companyQuestType", NULL AS "companyLang", qview7."cmpLongName" AS "company", 
   5 AS "lQuestType", NULL AS "lLang", CAST(qview8."lsuCoreLenght" AS VARCHAR(10485760)) AS "l"
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_development_all" qview3,
"public"."wellbore_development_all" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6,
"public"."company" qview7,
"public"."strat_litho_wellbore_core" qview8
WHERE 
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
qview6."cmpNpdidCompany" IS NOT NULL AND
(qview6."cmpNpdidCompany" = qview7."cmpNpdidCompany") AND
qview7."cmpLongName" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview8."lsuNpdidLithoStrat") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."lsuCoreLenght" IS NOT NULL
UNION
SELECT DISTINCT 
   
   qview1."wlbNpdidWellbore" AS "x", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   qview6."cmpNpdidCompany" AS "y", 
   7 AS "companyQuestType", NULL AS "companyLang", qview7."cmpLongName" AS "company", 
   5 AS "lQuestType", NULL AS "lLang", CAST(qview8."lsuCoreLenght" AS VARCHAR(10485760)) AS "l"
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6,
"public"."company" qview7,
"public"."strat_litho_wellbore_core" qview8
WHERE 
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
qview6."cmpNpdidCompany" IS NOT NULL AND
(qview6."cmpNpdidCompany" = qview7."cmpNpdidCompany") AND
qview7."cmpLongName" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview8."lsuNpdidLithoStrat") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."lsuCoreLenght" IS NOT NULL
UNION
SELECT DISTINCT 
   
   qview1."wlbNpdidWellbore" AS "x", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   qview6."cmpNpdidCompany" AS "y", 
   7 AS "companyQuestType", NULL AS "companyLang", qview7."cmpLongName" AS "company", 
   5 AS "lQuestType", NULL AS "lLang", CAST(qview8."lsuCoreLenght" AS VARCHAR(10485760)) AS "l"
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6,
"public"."company" qview7,
"public"."strat_litho_wellbore_core" qview8
WHERE 
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
qview6."cmpNpdidCompany" IS NOT NULL AND
(qview6."cmpNpdidCompany" = qview7."cmpNpdidCompany") AND
qview7."cmpLongName" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview8."lsuNpdidLithoStrat") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."lsuCoreLenght" IS NOT NULL
UNION
SELECT DISTINCT 
   
   qview1."wlbNpdidWellbore" AS "x", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   qview6."cmpNpdidCompany" AS "y", 
   7 AS "companyQuestType", NULL AS "companyLang", qview7."cmpLongName" AS "company", 
   5 AS "lQuestType", NULL AS "lLang", CAST(qview8."lsuCoreLenght" AS VARCHAR(10485760)) AS "l"
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."wellbore_shallow_all" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6,
"public"."company" qview7,
"public"."strat_litho_wellbore_core" qview8
WHERE 
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
qview6."cmpNpdidCompany" IS NOT NULL AND
(qview6."cmpNpdidCompany" = qview7."cmpNpdidCompany") AND
qview7."cmpLongName" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview8."lsuNpdidLithoStrat") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."lsuCoreLenght" IS NOT NULL
UNION
SELECT DISTINCT 
   
   qview1."wlbNpdidWellbore" AS "x", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   qview6."cmpNpdidCompany" AS "y", 
   7 AS "companyQuestType", NULL AS "companyLang", qview7."cmpLongName" AS "company", 
   5 AS "lQuestType", NULL AS "lLang", CAST(qview8."lsuCoreLenght" AS VARCHAR(10485760)) AS "l"
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."wellbore_shallow_all" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6,
"public"."company" qview7,
"public"."strat_litho_wellbore_core" qview8
WHERE 
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
qview6."cmpNpdidCompany" IS NOT NULL AND
(qview6."cmpNpdidCompany" = qview7."cmpNpdidCompany") AND
qview7."cmpLongName" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview8."lsuNpdidLithoStrat") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."lsuCoreLenght" IS NOT NULL
UNION
SELECT DISTINCT 
   
   qview1."wlbNpdidWellbore" AS "x", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   qview6."cmpNpdidCompany" AS "y", 
   7 AS "companyQuestType", NULL AS "companyLang", qview7."cmpLongName" AS "company", 
   5 AS "lQuestType", NULL AS "lLang", CAST(qview8."lsuCoreLenght" AS VARCHAR(10485760)) AS "l"
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."wellbore_development_all" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6,
"public"."company" qview7,
"public"."strat_litho_wellbore_core" qview8
WHERE 
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
qview6."cmpNpdidCompany" IS NOT NULL AND
(qview6."cmpNpdidCompany" = qview7."cmpNpdidCompany") AND
qview7."cmpLongName" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview8."lsuNpdidLithoStrat") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."lsuCoreLenght" IS NOT NULL
UNION
SELECT DISTINCT 
   
   qview1."wlbNpdidWellbore" AS "x", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   qview6."cmpNpdidCompany" AS "y", 
   7 AS "companyQuestType", NULL AS "companyLang", qview7."cmpLongName" AS "company", 
   5 AS "lQuestType", NULL AS "lLang", CAST(qview8."lsuCoreLenght" AS VARCHAR(10485760)) AS "l"
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."wellbore_development_all" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6,
"public"."company" qview7,
"public"."strat_litho_wellbore_core" qview8
WHERE 
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
qview6."cmpNpdidCompany" IS NOT NULL AND
(qview6."cmpNpdidCompany" = qview7."cmpNpdidCompany") AND
qview7."cmpLongName" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview8."lsuNpdidLithoStrat") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."lsuCoreLenght" IS NOT NULL
UNION
SELECT DISTINCT 
   
   qview1."wlbNpdidWellbore" AS "x", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   qview6."cmpNpdidCompany" AS "y", 
   7 AS "companyQuestType", NULL AS "companyLang", qview7."cmpLongName" AS "company", 
   5 AS "lQuestType", NULL AS "lLang", CAST(qview8."lsuCoreLenght" AS VARCHAR(10485760)) AS "l"
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6,
"public"."company" qview7,
"public"."strat_litho_wellbore_core" qview8
WHERE 
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
qview6."cmpNpdidCompany" IS NOT NULL AND
(qview6."cmpNpdidCompany" = qview7."cmpNpdidCompany") AND
qview7."cmpLongName" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview8."lsuNpdidLithoStrat") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."lsuCoreLenght" IS NOT NULL
UNION
SELECT DISTINCT 
   
   qview1."wlbNpdidWellbore" AS "x", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   qview6."cmpNpdidCompany" AS "y", 
   7 AS "companyQuestType", NULL AS "companyLang", qview7."cmpLongName" AS "company", 
   5 AS "lQuestType", NULL AS "lLang", CAST(qview8."lsuCoreLenght" AS VARCHAR(10485760)) AS "l"
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6,
"public"."company" qview7,
"public"."strat_litho_wellbore_core" qview8
WHERE 
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
qview6."cmpNpdidCompany" IS NOT NULL AND
(qview6."cmpNpdidCompany" = qview7."cmpNpdidCompany") AND
qview7."cmpLongName" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview8."lsuNpdidLithoStrat") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."lsuCoreLenght" IS NOT NULL
UNION
SELECT DISTINCT 
   
   qview1."wlbNpdidWellbore" AS "x", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   qview5."cmpNpdidCompany" AS "y", 
   7 AS "companyQuestType", NULL AS "companyLang", qview6."cmpLongName" AS "company", 
   5 AS "lQuestType", NULL AS "lLang", CAST(qview7."lsuCoreLenght" AS VARCHAR(10485760)) AS "l"
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."company" qview5,
"public"."company" qview6,
"public"."strat_litho_wellbore_core" qview7
WHERE 
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview4."wlbDrillingOperator" = qview5."cmpLongName") AND
qview5."cmpNpdidCompany" IS NOT NULL AND
(qview5."cmpNpdidCompany" = qview6."cmpNpdidCompany") AND
qview6."cmpLongName" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview7."lsuNpdidLithoStrat") AND
(qview1."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
qview7."lsuCoreLenght" IS NOT NULL
UNION
SELECT DISTINCT 
   
   qview1."wlbNpdidWellbore" AS "x", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   qview5."cmpNpdidCompany" AS "y", 
   7 AS "companyQuestType", NULL AS "companyLang", qview6."cmpLongName" AS "company", 
   5 AS "lQuestType", NULL AS "lLang", CAST(qview7."lsuCoreLenght" AS VARCHAR(10485760)) AS "l"
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."wellbore_development_all" qview4,
"public"."company" qview5,
"public"."company" qview6,
"public"."strat_litho_wellbore_core" qview7
WHERE 
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
qview3."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview4."wlbDrillingOperator" = qview5."cmpLongName") AND
qview5."cmpNpdidCompany" IS NOT NULL AND
(qview5."cmpNpdidCompany" = qview6."cmpNpdidCompany") AND
qview6."cmpLongName" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview7."lsuNpdidLithoStrat") AND
(qview1."wlbNpdidWellbore" = qview7."wlbNpdidWellbore") AND
qview7."lsuCoreLenght" IS NOT NULL
UNION
SELECT DISTINCT 
   
   qview1."wlbNpdidWellbore" AS "x", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   qview6."cmpNpdidCompany" AS "y", 
   7 AS "companyQuestType", NULL AS "companyLang", qview7."cmpLongName" AS "company", 
   5 AS "lQuestType", NULL AS "lLang", CAST(qview8."lsuCoreLenght" AS VARCHAR(10485760)) AS "l"
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."wellbore_development_all" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6,
"public"."company" qview7,
"public"."strat_litho_wellbore_core" qview8
WHERE 
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
qview6."cmpNpdidCompany" IS NOT NULL AND
(qview6."cmpNpdidCompany" = qview7."cmpNpdidCompany") AND
qview7."cmpLongName" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview8."lsuNpdidLithoStrat") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."lsuCoreLenght" IS NOT NULL
UNION
SELECT DISTINCT 
   
   qview1."wlbNpdidWellbore" AS "x", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   qview6."cmpNpdidCompany" AS "y", 
   7 AS "companyQuestType", NULL AS "companyLang", qview7."cmpLongName" AS "company", 
   5 AS "lQuestType", NULL AS "lLang", CAST(qview8."lsuCoreLenght" AS VARCHAR(10485760)) AS "l"
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."wellbore_development_all" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6,
"public"."company" qview7,
"public"."strat_litho_wellbore_core" qview8
WHERE 
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
qview6."cmpNpdidCompany" IS NOT NULL AND
(qview6."cmpNpdidCompany" = qview7."cmpNpdidCompany") AND
qview7."cmpLongName" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview8."lsuNpdidLithoStrat") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."lsuCoreLenght" IS NOT NULL
UNION
SELECT DISTINCT 
   
   qview1."wlbNpdidWellbore" AS "x", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   qview6."cmpNpdidCompany" AS "y", 
   7 AS "companyQuestType", NULL AS "companyLang", qview7."cmpLongName" AS "company", 
   5 AS "lQuestType", NULL AS "lLang", CAST(qview8."lsuCoreLenght" AS VARCHAR(10485760)) AS "l"
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_npdid_overview" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6,
"public"."company" qview7,
"public"."strat_litho_wellbore_core" qview8
WHERE 
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
qview6."cmpNpdidCompany" IS NOT NULL AND
(qview6."cmpNpdidCompany" = qview7."cmpNpdidCompany") AND
qview7."cmpLongName" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview8."lsuNpdidLithoStrat") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."lsuCoreLenght" IS NOT NULL
UNION
SELECT DISTINCT 
   
   qview1."wlbNpdidWellbore" AS "x", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   qview6."cmpNpdidCompany" AS "y", 
   7 AS "companyQuestType", NULL AS "companyLang", qview7."cmpLongName" AS "company", 
   5 AS "lQuestType", NULL AS "lLang", CAST(qview8."lsuCoreLenght" AS VARCHAR(10485760)) AS "l"
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_npdid_overview" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6,
"public"."company" qview7,
"public"."strat_litho_wellbore_core" qview8
WHERE 
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
qview6."cmpNpdidCompany" IS NOT NULL AND
(qview6."cmpNpdidCompany" = qview7."cmpNpdidCompany") AND
qview7."cmpLongName" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview8."lsuNpdidLithoStrat") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."lsuCoreLenght" IS NOT NULL
UNION
SELECT DISTINCT 
   
   qview1."wlbNpdidWellbore" AS "x", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   qview6."cmpNpdidCompany" AS "y", 
   7 AS "companyQuestType", NULL AS "companyLang", qview7."cmpLongName" AS "company", 
   5 AS "lQuestType", NULL AS "lLang", CAST(qview8."lsuCoreLenght" AS VARCHAR(10485760)) AS "l"
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_npdid_overview" qview3,
"public"."wellbore_shallow_all" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6,
"public"."company" qview7,
"public"."strat_litho_wellbore_core" qview8
WHERE 
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
qview6."cmpNpdidCompany" IS NOT NULL AND
(qview6."cmpNpdidCompany" = qview7."cmpNpdidCompany") AND
qview7."cmpLongName" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview8."lsuNpdidLithoStrat") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."lsuCoreLenght" IS NOT NULL
UNION
SELECT DISTINCT 
   
   qview1."wlbNpdidWellbore" AS "x", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   qview6."cmpNpdidCompany" AS "y", 
   7 AS "companyQuestType", NULL AS "companyLang", qview7."cmpLongName" AS "company", 
   5 AS "lQuestType", NULL AS "lLang", CAST(qview8."lsuCoreLenght" AS VARCHAR(10485760)) AS "l"
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_npdid_overview" qview3,
"public"."wellbore_shallow_all" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6,
"public"."company" qview7,
"public"."strat_litho_wellbore_core" qview8
WHERE 
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
qview6."cmpNpdidCompany" IS NOT NULL AND
(qview6."cmpNpdidCompany" = qview7."cmpNpdidCompany") AND
qview7."cmpLongName" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview8."lsuNpdidLithoStrat") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."lsuCoreLenght" IS NOT NULL
UNION
SELECT DISTINCT 
   
   qview1."wlbNpdidWellbore" AS "x", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   qview6."cmpNpdidCompany" AS "y", 
   7 AS "companyQuestType", NULL AS "companyLang", qview7."cmpLongName" AS "company", 
   5 AS "lQuestType", NULL AS "lLang", CAST(qview8."lsuCoreLenght" AS VARCHAR(10485760)) AS "l"
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_npdid_overview" qview3,
"public"."wellbore_development_all" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6,
"public"."company" qview7,
"public"."strat_litho_wellbore_core" qview8
WHERE 
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
qview6."cmpNpdidCompany" IS NOT NULL AND
(qview6."cmpNpdidCompany" = qview7."cmpNpdidCompany") AND
qview7."cmpLongName" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview8."lsuNpdidLithoStrat") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."lsuCoreLenght" IS NOT NULL
UNION
SELECT DISTINCT 
   
   qview1."wlbNpdidWellbore" AS "x", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   qview6."cmpNpdidCompany" AS "y", 
   7 AS "companyQuestType", NULL AS "companyLang", qview7."cmpLongName" AS "company", 
   5 AS "lQuestType", NULL AS "lLang", CAST(qview8."lsuCoreLenght" AS VARCHAR(10485760)) AS "l"
 FROM 
"public"."strat_litho_wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_npdid_overview" qview3,
"public"."wellbore_development_all" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6,
"public"."company" qview7,
"public"."strat_litho_wellbore_core" qview8
WHERE 
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview1."lsuNpdidLithoStrat" IS NOT NULL AND
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
qview4."wlbCompletionYear" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
qview6."cmpNpdidCompany" IS NOT NULL AND
(qview6."cmpNpdidCompany" = qview7."cmpNpdidCompany") AND
qview7."cmpLongName" IS NOT NULL AND
(qview1."lsuNpdidLithoStrat" = qview8."lsuNpdidLithoStrat") AND
(qview1."wlbNpdidWellbore" = qview8."wlbNpdidWellbore") AND
qview8."lsuCoreLenght" IS NOT NULL
UNION
--- Begin of another template
SELECT DISTINCT 
   
   qview1."wlbNpdidWellbore" AS "x", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   qview6."cmpNpdidCompany" AS "y", 
   7 AS "companyQuestType", NULL AS "companyLang", qview7."cmpLongName" AS "company", 
   5 AS "lQuestType", NULL AS "lLang", CAST(qview8."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "l"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_development_all" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6,
"public"."company" qview7,
"public"."wellbore_core" qview8
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
qview8."wlbTotalCoreLength" IS NOT NULL
UNION
SELECT DISTINCT 
   
   qview1."wlbNpdidWellbore" AS "x", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   qview6."cmpNpdidCompany" AS "y", 
   7 AS "companyQuestType", NULL AS "companyLang", qview7."cmpLongName" AS "company", 
   5 AS "lQuestType", NULL AS "lLang", CAST(qview8."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "l"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_development_all" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6,
"public"."company" qview7,
"public"."wellbore_core" qview8
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
qview8."wlbTotalCoreLength" IS NOT NULL
UNION
SELECT DISTINCT 
   
   qview1."wlbNpdidWellbore" AS "x", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   qview6."cmpNpdidCompany" AS "y", 
   7 AS "companyQuestType", NULL AS "companyLang", qview7."cmpLongName" AS "company", 
   5 AS "lQuestType", NULL AS "lLang", CAST(qview8."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "l"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_development_all" qview3,
"public"."wellbore_shallow_all" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6,
"public"."company" qview7,
"public"."wellbore_core" qview8
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
qview8."wlbTotalCoreLength" IS NOT NULL
UNION
SELECT DISTINCT 
   
   qview1."wlbNpdidWellbore" AS "x", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   qview6."cmpNpdidCompany" AS "y", 
   7 AS "companyQuestType", NULL AS "companyLang", qview7."cmpLongName" AS "company", 
   5 AS "lQuestType", NULL AS "lLang", CAST(qview8."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "l"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_development_all" qview3,
"public"."wellbore_shallow_all" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6,
"public"."company" qview7,
"public"."wellbore_core" qview8
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
qview8."wlbTotalCoreLength" IS NOT NULL
UNION
SELECT DISTINCT 
   
   qview1."wlbNpdidWellbore" AS "x", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   qview6."cmpNpdidCompany" AS "y", 
   7 AS "companyQuestType", NULL AS "companyLang", qview7."cmpLongName" AS "company", 
   5 AS "lQuestType", NULL AS "lLang", CAST(qview8."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "l"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_development_all" qview3,
"public"."wellbore_development_all" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6,
"public"."company" qview7,
"public"."wellbore_core" qview8
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
qview8."wlbTotalCoreLength" IS NOT NULL
UNION
SELECT DISTINCT 
   
   qview1."wlbNpdidWellbore" AS "x", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   qview6."cmpNpdidCompany" AS "y", 
   7 AS "companyQuestType", NULL AS "companyLang", qview7."cmpLongName" AS "company", 
   5 AS "lQuestType", NULL AS "lLang", CAST(qview8."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "l"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_development_all" qview3,
"public"."wellbore_development_all" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6,
"public"."company" qview7,
"public"."wellbore_core" qview8
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
qview8."wlbTotalCoreLength" IS NOT NULL
UNION
SELECT DISTINCT 
   
   qview1."wlbNpdidWellbore" AS "x", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   qview6."cmpNpdidCompany" AS "y", 
   7 AS "companyQuestType", NULL AS "companyLang", qview7."cmpLongName" AS "company", 
   5 AS "lQuestType", NULL AS "lLang", CAST(qview8."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "l"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6,
"public"."company" qview7,
"public"."wellbore_core" qview8
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
qview8."wlbTotalCoreLength" IS NOT NULL
UNION
SELECT DISTINCT 
   
   qview1."wlbNpdidWellbore" AS "x", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   qview6."cmpNpdidCompany" AS "y", 
   7 AS "companyQuestType", NULL AS "companyLang", qview7."cmpLongName" AS "company", 
   5 AS "lQuestType", NULL AS "lLang", CAST(qview8."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "l"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6,
"public"."company" qview7,
"public"."wellbore_core" qview8
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
qview8."wlbTotalCoreLength" IS NOT NULL
UNION
SELECT DISTINCT 
   
   qview1."wlbNpdidWellbore" AS "x", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   qview6."cmpNpdidCompany" AS "y", 
   7 AS "companyQuestType", NULL AS "companyLang", qview7."cmpLongName" AS "company", 
   5 AS "lQuestType", NULL AS "lLang", CAST(qview8."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "l"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."wellbore_shallow_all" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6,
"public"."company" qview7,
"public"."wellbore_core" qview8
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
qview8."wlbTotalCoreLength" IS NOT NULL
UNION
SELECT DISTINCT 
   
   qview1."wlbNpdidWellbore" AS "x", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   qview6."cmpNpdidCompany" AS "y", 
   7 AS "companyQuestType", NULL AS "companyLang", qview7."cmpLongName" AS "company", 
   5 AS "lQuestType", NULL AS "lLang", CAST(qview8."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "l"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."wellbore_shallow_all" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6,
"public"."company" qview7,
"public"."wellbore_core" qview8
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
qview8."wlbTotalCoreLength" IS NOT NULL
UNION
SELECT DISTINCT 
   
   qview1."wlbNpdidWellbore" AS "x", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   qview6."cmpNpdidCompany" AS "y", 
   7 AS "companyQuestType", NULL AS "companyLang", qview7."cmpLongName" AS "company", 
   5 AS "lQuestType", NULL AS "lLang", CAST(qview8."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "l"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."wellbore_development_all" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6,
"public"."company" qview7,
"public"."wellbore_core" qview8
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
qview8."wlbTotalCoreLength" IS NOT NULL
UNION
SELECT DISTINCT 
   
   qview1."wlbNpdidWellbore" AS "x", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   qview6."cmpNpdidCompany" AS "y", 
   7 AS "companyQuestType", NULL AS "companyLang", qview7."cmpLongName" AS "company", 
   5 AS "lQuestType", NULL AS "lLang", CAST(qview8."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "l"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."wellbore_development_all" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6,
"public"."company" qview7,
"public"."wellbore_core" qview8
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
qview8."wlbTotalCoreLength" IS NOT NULL
UNION
SELECT DISTINCT 
   
   qview1."wlbNpdidWellbore" AS "x", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   qview6."cmpNpdidCompany" AS "y", 
   7 AS "companyQuestType", NULL AS "companyLang", qview7."cmpLongName" AS "company", 
   5 AS "lQuestType", NULL AS "lLang", CAST(qview8."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "l"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6,
"public"."company" qview7,
"public"."wellbore_core" qview8
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
qview8."wlbTotalCoreLength" IS NOT NULL
UNION
SELECT DISTINCT 
   
   qview1."wlbNpdidWellbore" AS "x", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   qview6."cmpNpdidCompany" AS "y", 
   7 AS "companyQuestType", NULL AS "companyLang", qview7."cmpLongName" AS "company", 
   5 AS "lQuestType", NULL AS "lLang", CAST(qview8."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "l"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6,
"public"."company" qview7,
"public"."wellbore_core" qview8
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
qview8."wlbTotalCoreLength" IS NOT NULL
UNION
SELECT DISTINCT 
   
   qview1."wlbNpdidWellbore" AS "x", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   qview5."cmpNpdidCompany" AS "y", 
   7 AS "companyQuestType", NULL AS "companyLang", qview6."cmpLongName" AS "company", 
   5 AS "lQuestType", NULL AS "lLang", CAST(qview7."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "l"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."company" qview5,
"public"."company" qview6,
"public"."wellbore_core" qview7
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
qview7."wlbTotalCoreLength" IS NOT NULL
UNION
SELECT DISTINCT 
   
   qview1."wlbNpdidWellbore" AS "x", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview3."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   qview5."cmpNpdidCompany" AS "y", 
   7 AS "companyQuestType", NULL AS "companyLang", qview6."cmpLongName" AS "company", 
   5 AS "lQuestType", NULL AS "lLang", CAST(qview7."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "l"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."wellbore_development_all" qview4,
"public"."company" qview5,
"public"."company" qview6,
"public"."wellbore_core" qview7
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
qview7."wlbTotalCoreLength" IS NOT NULL
UNION
SELECT DISTINCT 
   
   qview1."wlbNpdidWellbore" AS "x", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   qview6."cmpNpdidCompany" AS "y", 
   7 AS "companyQuestType", NULL AS "companyLang", qview7."cmpLongName" AS "company", 
   5 AS "lQuestType", NULL AS "lLang", CAST(qview8."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "l"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."wellbore_development_all" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6,
"public"."company" qview7,
"public"."wellbore_core" qview8
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
qview8."wlbTotalCoreLength" IS NOT NULL
UNION
SELECT DISTINCT 
   
   qview1."wlbNpdidWellbore" AS "x", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   qview6."cmpNpdidCompany" AS "y", 
   7 AS "companyQuestType", NULL AS "companyLang", qview7."cmpLongName" AS "company", 
   5 AS "lQuestType", NULL AS "lLang", CAST(qview8."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "l"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."wellbore_development_all" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6,
"public"."company" qview7,
"public"."wellbore_core" qview8
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
qview8."wlbTotalCoreLength" IS NOT NULL
UNION
SELECT DISTINCT 
   
   qview1."wlbNpdidWellbore" AS "x", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   qview6."cmpNpdidCompany" AS "y", 
   7 AS "companyQuestType", NULL AS "companyLang", qview7."cmpLongName" AS "company", 
   5 AS "lQuestType", NULL AS "lLang", CAST(qview8."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "l"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_npdid_overview" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6,
"public"."company" qview7,
"public"."wellbore_core" qview8
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
qview8."wlbTotalCoreLength" IS NOT NULL
UNION
SELECT DISTINCT 
   
   qview1."wlbNpdidWellbore" AS "x", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   qview6."cmpNpdidCompany" AS "y", 
   7 AS "companyQuestType", NULL AS "companyLang", qview7."cmpLongName" AS "company", 
   5 AS "lQuestType", NULL AS "lLang", CAST(qview8."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "l"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_npdid_overview" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6,
"public"."company" qview7,
"public"."wellbore_core" qview8
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
qview8."wlbTotalCoreLength" IS NOT NULL
UNION
SELECT DISTINCT 
   
   qview1."wlbNpdidWellbore" AS "x", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   qview6."cmpNpdidCompany" AS "y", 
   7 AS "companyQuestType", NULL AS "companyLang", qview7."cmpLongName" AS "company", 
   5 AS "lQuestType", NULL AS "lLang", CAST(qview8."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "l"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_npdid_overview" qview3,
"public"."wellbore_shallow_all" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6,
"public"."company" qview7,
"public"."wellbore_core" qview8
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
qview8."wlbTotalCoreLength" IS NOT NULL
UNION
SELECT DISTINCT 
   
   qview1."wlbNpdidWellbore" AS "x", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   qview6."cmpNpdidCompany" AS "y", 
   7 AS "companyQuestType", NULL AS "companyLang", qview7."cmpLongName" AS "company", 
   5 AS "lQuestType", NULL AS "lLang", CAST(qview8."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "l"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_npdid_overview" qview3,
"public"."wellbore_shallow_all" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6,
"public"."company" qview7,
"public"."wellbore_core" qview8
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
qview8."wlbTotalCoreLength" IS NOT NULL
UNION
SELECT DISTINCT 
   
   qview1."wlbNpdidWellbore" AS "x", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   qview6."cmpNpdidCompany" AS "y", 
   7 AS "companyQuestType", NULL AS "companyLang", qview7."cmpLongName" AS "company", 
   5 AS "lQuestType", NULL AS "lLang", CAST(qview8."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "l"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_npdid_overview" qview3,
"public"."wellbore_development_all" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6,
"public"."company" qview7,
"public"."wellbore_core" qview8
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
qview8."wlbTotalCoreLength" IS NOT NULL
UNION
SELECT DISTINCT 
   
   qview1."wlbNpdidWellbore" AS "x", 
   7 AS "wellboreQuestType", NULL AS "wellboreLang", qview3."wlbWellboreName" AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(qview4."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   qview6."cmpNpdidCompany" AS "y", 
   7 AS "companyQuestType", NULL AS "companyLang", qview7."cmpLongName" AS "company", 
   5 AS "lQuestType", NULL AS "lLang", CAST(qview8."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "l"
 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_npdid_overview" qview3,
"public"."wellbore_development_all" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6,
"public"."company" qview7,
"public"."wellbore_core" qview8
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
qview8."wlbTotalCoreLength" IS NOT NULL
) SUB_QVIEW
