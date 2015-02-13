WITH wellbore AS (
      SELECT "wlbNpdidWellbore","wlbCompletionYear", "wlbWellboreName" FROM "wellbore_development_all"
      UNION
      SELECT "wlbNpdidWellbore","wlbCompletionYear", "wlbWellboreName" FROM "wellbore_shallow_all"
      UNION
      SELECT "wlbNpdidWellbore","wlbCompletionYear", "wlbWellboreName" FROM "wellbore_exploration_all"
)
SELECT 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || CAST(QVIEW1."wlbNpdidWellbore" AS VARCHAR(10485760)) || '/core/' || CAST(QVIEW5."wlbCoreNumber" AS VARCHAR(10485760))) AS "wc", 
   3 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(QVIEW1."wlbWellboreName" AS VARCHAR(10485760)) AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(QVIEW2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   3 AS "companyQuestType", NULL AS "companyLang", CAST(QVIEW3."cmpLongName" AS VARCHAR(10485760)) AS "company"
 FROM 
"wellbore_npdid_overview" QVIEW1,
"wellbore" QVIEW2,
"company" QVIEW3,
wellbore_development_all QVIEW4,
"wellbore_core" QVIEW5
WHERE 
QVIEW1."wlbNpdidWellbore" IS NOT NULL AND
QVIEW1."wlbWellboreName" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW2."wlbNpdidWellbore") AND
QVIEW2."wlbCompletionYear" IS NOT NULL AND
QVIEW3."cmpNpdidCompany" IS NOT NULL AND
QVIEW3."cmpLongName" IS NOT NULL AND
(QVIEW3."cmpLongName" = QVIEW4."wlbDrillingOperator") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW4."wlbNpdidWellbore") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW5."wlbNpdidWellbore") AND
QVIEW5."wlbCoreNumber" IS NOT NULL
UNION ALL
SELECT 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || CAST(QVIEW1."wlbNpdidWellbore" AS VARCHAR(10485760)) || '/stratum/' || CAST(QVIEW5."lsuNpdidLithoStrat" AS VARCHAR(10485760)) || '/cores') AS "wc", 
   3 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(QVIEW1."wlbWellboreName" AS VARCHAR(10485760)) AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(QVIEW2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   3 AS "companyQuestType", NULL AS "companyLang", CAST(QVIEW3."cmpLongName" AS VARCHAR(10485760)) AS "company"
 FROM 
"wellbore_npdid_overview" QVIEW1,
"wellbore" QVIEW2,
"company" QVIEW3,
wellbore_development_all QVIEW4,
"strat_litho_wellbore_core" QVIEW5
WHERE 
QVIEW1."wlbNpdidWellbore" IS NOT NULL AND
QVIEW1."wlbWellboreName" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW2."wlbNpdidWellbore") AND
QVIEW2."wlbCompletionYear" IS NOT NULL AND
QVIEW3."cmpNpdidCompany" IS NOT NULL AND
QVIEW3."cmpLongName" IS NOT NULL AND
(QVIEW3."cmpLongName" = QVIEW4."wlbDrillingOperator") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW4."wlbNpdidWellbore") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW5."wlbNpdidWellbore") AND
QVIEW5."lsuNpdidLithoStrat" IS NOT NULL
UNION ALL
SELECT 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || CAST(QVIEW1."wlbNpdidWellbore" AS VARCHAR(10485760)) || '/core/' || CAST(QVIEW5."wlbCoreNumber" AS VARCHAR(10485760))) AS "wc", 
   3 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(QVIEW1."wlbWellboreName" AS VARCHAR(10485760)) AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(QVIEW2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   3 AS "companyQuestType", NULL AS "companyLang", CAST(QVIEW3."cmpLongName" AS VARCHAR(10485760)) AS "company"
 FROM 
"wellbore_npdid_overview" QVIEW1,
"wellbore" QVIEW2,
"company" QVIEW3,
"wellbore_exploration_all" QVIEW4,
"wellbore_core" QVIEW5
WHERE 
QVIEW1."wlbNpdidWellbore" IS NOT NULL AND
QVIEW1."wlbWellboreName" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW2."wlbNpdidWellbore") AND
QVIEW2."wlbCompletionYear" IS NOT NULL AND
QVIEW3."cmpNpdidCompany" IS NOT NULL AND
QVIEW3."cmpLongName" IS NOT NULL AND
(QVIEW3."cmpLongName" = QVIEW4."wlbDrillingOperator") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW4."wlbNpdidWellbore") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW5."wlbNpdidWellbore") AND
QVIEW5."wlbCoreNumber" IS NOT NULL
UNION ALL
SELECT 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || CAST(QVIEW1."wlbNpdidWellbore" AS VARCHAR(10485760)) || '/stratum/' || CAST(QVIEW5."lsuNpdidLithoStrat" AS VARCHAR(10485760)) || '/cores') AS "wc", 
   3 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(QVIEW1."wlbWellboreName" AS VARCHAR(10485760)) AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(QVIEW2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   3 AS "companyQuestType", NULL AS "companyLang", CAST(QVIEW3."cmpLongName" AS VARCHAR(10485760)) AS "company"
 FROM 
"wellbore_npdid_overview" QVIEW1,
"wellbore" QVIEW2,
"company" QVIEW3,
"wellbore_exploration_all" QVIEW4,
"strat_litho_wellbore_core" QVIEW5
WHERE 
QVIEW1."wlbNpdidWellbore" IS NOT NULL AND
QVIEW1."wlbWellboreName" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW2."wlbNpdidWellbore") AND
QVIEW2."wlbCompletionYear" IS NOT NULL AND
QVIEW3."cmpNpdidCompany" IS NOT NULL AND
QVIEW3."cmpLongName" IS NOT NULL AND
(QVIEW3."cmpLongName" = QVIEW4."wlbDrillingOperator") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW4."wlbNpdidWellbore") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW5."wlbNpdidWellbore") AND
QVIEW5."lsuNpdidLithoStrat" IS NOT NULL
UNION ALL
SELECT 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || CAST(QVIEW1."wlbNpdidWellbore" AS VARCHAR(10485760)) || '/core/' || CAST(QVIEW5."wlbCoreNumber" AS VARCHAR(10485760))) AS "wc", 
   3 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(QVIEW2."wlbWellboreName" AS VARCHAR(10485760)) AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(QVIEW2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   3 AS "companyQuestType", NULL AS "companyLang", CAST(QVIEW3."cmpLongName" AS VARCHAR(10485760)) AS "company"
 FROM 
"wellbore_npdid_overview" QVIEW1,
"wellbore" QVIEW2,
"company" QVIEW3,
wellbore_development_all QVIEW4,
"wellbore_core" QVIEW5
WHERE 
QVIEW1."wlbNpdidWellbore" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW2."wlbNpdidWellbore") AND
QVIEW2."wlbWellboreName" IS NOT NULL AND
QVIEW2."wlbCompletionYear" IS NOT NULL AND
QVIEW3."cmpNpdidCompany" IS NOT NULL AND
QVIEW3."cmpLongName" IS NOT NULL AND
(QVIEW3."cmpLongName" = QVIEW4."wlbDrillingOperator") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW4."wlbNpdidWellbore") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW5."wlbNpdidWellbore") AND
QVIEW5."wlbCoreNumber" IS NOT NULL
UNION ALL
SELECT 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || CAST(QVIEW1."wlbNpdidWellbore" AS VARCHAR(10485760)) || '/stratum/' || CAST(QVIEW5."lsuNpdidLithoStrat" AS VARCHAR(10485760)) || '/cores') AS "wc", 
   3 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(QVIEW2."wlbWellboreName" AS VARCHAR(10485760)) AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(QVIEW2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   3 AS "companyQuestType", NULL AS "companyLang", CAST(QVIEW3."cmpLongName" AS VARCHAR(10485760)) AS "company"
 FROM 
"wellbore_npdid_overview" QVIEW1,
"wellbore" QVIEW2,
"company" QVIEW3,
wellbore_development_all QVIEW4,
"strat_litho_wellbore_core" QVIEW5
WHERE 
QVIEW1."wlbNpdidWellbore" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW2."wlbNpdidWellbore") AND
QVIEW2."wlbWellboreName" IS NOT NULL AND
QVIEW2."wlbCompletionYear" IS NOT NULL AND
QVIEW3."cmpNpdidCompany" IS NOT NULL AND
QVIEW3."cmpLongName" IS NOT NULL AND
(QVIEW3."cmpLongName" = QVIEW4."wlbDrillingOperator") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW4."wlbNpdidWellbore") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW5."wlbNpdidWellbore") AND
QVIEW5."lsuNpdidLithoStrat" IS NOT NULL
UNION ALL
SELECT 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || CAST(QVIEW1."wlbNpdidWellbore" AS VARCHAR(10485760)) || '/core/' || CAST(QVIEW5."wlbCoreNumber" AS VARCHAR(10485760))) AS "wc", 
   3 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(QVIEW2."wlbWellboreName" AS VARCHAR(10485760)) AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(QVIEW2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   3 AS "companyQuestType", NULL AS "companyLang", CAST(QVIEW3."cmpLongName" AS VARCHAR(10485760)) AS "company"
 FROM 
"wellbore_npdid_overview" QVIEW1,
"wellbore" QVIEW2,
"company" QVIEW3,
"wellbore_exploration_all" QVIEW4,
"wellbore_core" QVIEW5
WHERE 
QVIEW1."wlbNpdidWellbore" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW2."wlbNpdidWellbore") AND
QVIEW2."wlbWellboreName" IS NOT NULL AND
QVIEW2."wlbCompletionYear" IS NOT NULL AND
QVIEW3."cmpNpdidCompany" IS NOT NULL AND
QVIEW3."cmpLongName" IS NOT NULL AND
(QVIEW3."cmpLongName" = QVIEW4."wlbDrillingOperator") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW4."wlbNpdidWellbore") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW5."wlbNpdidWellbore") AND
QVIEW5."wlbCoreNumber" IS NOT NULL
UNION ALL
SELECT 
   1 AS "wcQuestType", NULL AS "wcLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || CAST(QVIEW1."wlbNpdidWellbore" AS VARCHAR(10485760)) || '/stratum/' || CAST(QVIEW5."lsuNpdidLithoStrat" AS VARCHAR(10485760)) || '/cores') AS "wc", 
   3 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(QVIEW2."wlbWellboreName" AS VARCHAR(10485760)) AS "wellbore", 
   4 AS "yearQuestType", NULL AS "yearLang", CAST(QVIEW2."wlbCompletionYear" AS VARCHAR(10485760)) AS "year", 
   3 AS "companyQuestType", NULL AS "companyLang", CAST(QVIEW3."cmpLongName" AS VARCHAR(10485760)) AS "company"
 FROM 
"wellbore_npdid_overview" QVIEW1,
"wellbore" QVIEW2,
"company" QVIEW3,
"wellbore_exploration_all" QVIEW4,
"strat_litho_wellbore_core" QVIEW5
WHERE 
QVIEW1."wlbNpdidWellbore" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW2."wlbNpdidWellbore") AND
QVIEW2."wlbWellboreName" IS NOT NULL AND
QVIEW2."wlbCompletionYear" IS NOT NULL AND
QVIEW3."cmpNpdidCompany" IS NOT NULL AND
QVIEW3."cmpLongName" IS NOT NULL AND
(QVIEW3."cmpLongName" = QVIEW4."wlbDrillingOperator") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW4."wlbNpdidWellbore") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW5."wlbNpdidWellbore") AND
QVIEW5."lsuNpdidLithoStrat" IS NOT NULL
