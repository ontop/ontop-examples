WITH wellbore AS (
      SELECT "wlbNpdidWellbore","wlbCompletionYear", "wlbWellboreName" FROM "wellbore_development_all"
      UNION
      SELECT "wlbNpdidWellbore","wlbCompletionYear", "wlbWellboreName" FROM "wellbore_shallow_all"
      UNION
      SELECT "wlbNpdidWellbore","wlbCompletionYear", "wlbWellboreName" FROM "wellbore_exploration_all"
)
SELECT *
FROM (
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."wlbNpdidWellbore" AS VARCHAR(10485760)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW5."wlbCoreNumber" AS VARCHAR(10485760)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "wellbore", 
   7 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(QVIEW3."cmpLongName" AS VARCHAR(10485760)) AS "lenghtM", 
   4 AS "companyQuestType", NULL AS "companyLang", CAST(QVIEW2."wlbCompletionYear" AS VARCHAR(10485760)) AS "company", 
   5 AS "yearQuestType", NULL AS "yearLang", CAST(QVIEW6."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "year"
 FROM 
"wellbore_npdid_overview" QVIEW1,
"wellbore" QVIEW2,
"company" QVIEW3,
"wellbore_development_all" QVIEW4,
"wellbore_core" QVIEW5,
"wellbore_core" QVIEW6
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
QVIEW5."wlbCoreNumber" IS NOT NULL AND
(QVIEW5."wlbCoreNumber" = QVIEW6."wlbCoreNumber") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW6."wlbNpdidWellbore") AND
QVIEW6."wlbTotalCoreLength" IS NOT NULL AND
((QVIEW6."wlbTotalCoreLength" > 50) AND (QVIEW2."wlbCompletionYear" >= 2008))
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."wlbNpdidWellbore" AS VARCHAR(10485760)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F') || '/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW5."lsuNpdidLithoStrat" AS VARCHAR(10485760)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F') || '/cores') AS "wellbore", 
   7 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(QVIEW3."cmpLongName" AS VARCHAR(10485760)) AS "lenghtM", 
   4 AS "companyQuestType", NULL AS "companyLang", CAST(QVIEW2."wlbCompletionYear" AS VARCHAR(10485760)) AS "company", 
   5 AS "yearQuestType", NULL AS "yearLang", CAST(QVIEW5."lsuCoreLenght" AS VARCHAR(10485760)) AS "year"
 FROM 
"wellbore_npdid_overview" QVIEW1,
"wellbore" QVIEW2,
"company" QVIEW3,
"wellbore_development_all" QVIEW4,
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
QVIEW5."lsuNpdidLithoStrat" IS NOT NULL AND
QVIEW5."lsuCoreLenght" IS NOT NULL AND
((QVIEW5."lsuCoreLenght" > 50) AND (QVIEW2."wlbCompletionYear" >= 2008))
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."wlbNpdidWellbore" AS VARCHAR(10485760)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW5."wlbCoreNumber" AS VARCHAR(10485760)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "wellbore", 
   7 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(QVIEW3."cmpLongName" AS VARCHAR(10485760)) AS "lenghtM", 
   4 AS "companyQuestType", NULL AS "companyLang", CAST(QVIEW2."wlbCompletionYear" AS VARCHAR(10485760)) AS "company", 
   5 AS "yearQuestType", NULL AS "yearLang", CAST(QVIEW6."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "year"
 FROM 
"wellbore_npdid_overview" QVIEW1,
"wellbore" QVIEW2,
"company" QVIEW3,
"wellbore_exploration_all" QVIEW4,
"wellbore_core" QVIEW5,
"wellbore_core" QVIEW6
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
QVIEW5."wlbCoreNumber" IS NOT NULL AND
(QVIEW5."wlbCoreNumber" = QVIEW6."wlbCoreNumber") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW6."wlbNpdidWellbore") AND
QVIEW6."wlbTotalCoreLength" IS NOT NULL AND
((QVIEW6."wlbTotalCoreLength" > 50) AND (QVIEW2."wlbCompletionYear" >= 2008))
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."wlbNpdidWellbore" AS VARCHAR(10485760)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F') || '/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW5."lsuNpdidLithoStrat" AS VARCHAR(10485760)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F') || '/cores') AS "wellbore", 
   7 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(QVIEW3."cmpLongName" AS VARCHAR(10485760)) AS "lenghtM", 
   4 AS "companyQuestType", NULL AS "companyLang", CAST(QVIEW2."wlbCompletionYear" AS VARCHAR(10485760)) AS "company", 
   5 AS "yearQuestType", NULL AS "yearLang", CAST(QVIEW5."lsuCoreLenght" AS VARCHAR(10485760)) AS "year"
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
QVIEW5."lsuNpdidLithoStrat" IS NOT NULL AND
QVIEW5."lsuCoreLenght" IS NOT NULL AND
((QVIEW5."lsuCoreLenght" > 50) AND (QVIEW2."wlbCompletionYear" >= 2008))
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."wlbNpdidWellbore" AS VARCHAR(10485760)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW4."wlbCoreNumber" AS VARCHAR(10485760)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "wellbore", 
   7 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(QVIEW2."cmpLongName" AS VARCHAR(10485760)) AS "lenghtM", 
   4 AS "companyQuestType", NULL AS "companyLang", CAST(QVIEW1."wlbCompletionYear" AS VARCHAR(10485760)) AS "company", 
   5 AS "yearQuestType", NULL AS "yearLang", CAST(QVIEW6."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "year"
 FROM 
"wellbore" QVIEW1,
"company" QVIEW2,
"wellbore_development_all" QVIEW3,
"wellbore_core" QVIEW4,
"wellbore_npdid_overview" QVIEW5,
"wellbore_core" QVIEW6
WHERE 
QVIEW1."wlbNpdidWellbore" IS NOT NULL AND
QVIEW1."wlbWellboreName" IS NOT NULL AND
QVIEW1."wlbCompletionYear" IS NOT NULL AND
QVIEW2."cmpNpdidCompany" IS NOT NULL AND
QVIEW2."cmpLongName" IS NOT NULL AND
(QVIEW2."cmpLongName" = QVIEW3."wlbDrillingOperator") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW3."wlbNpdidWellbore") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW4."wlbNpdidWellbore") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW5."wlbNpdidWellbore") AND
QVIEW4."wlbCoreNumber" IS NOT NULL AND
(QVIEW4."wlbCoreNumber" = QVIEW6."wlbCoreNumber") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW6."wlbNpdidWellbore") AND
QVIEW6."wlbTotalCoreLength" IS NOT NULL AND
((QVIEW6."wlbTotalCoreLength" > 50) AND (QVIEW1."wlbCompletionYear" >= 2008))
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."wlbNpdidWellbore" AS VARCHAR(10485760)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F') || '/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW4."lsuNpdidLithoStrat" AS VARCHAR(10485760)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F') || '/cores') AS "wellbore", 
   7 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(QVIEW2."cmpLongName" AS VARCHAR(10485760)) AS "lenghtM", 
   4 AS "companyQuestType", NULL AS "companyLang", CAST(QVIEW1."wlbCompletionYear" AS VARCHAR(10485760)) AS "company", 
   5 AS "yearQuestType", NULL AS "yearLang", CAST(QVIEW4."lsuCoreLenght" AS VARCHAR(10485760)) AS "year"
 FROM 
"wellbore" QVIEW1,
"company" QVIEW2,
"wellbore_development_all" QVIEW3,
"strat_litho_wellbore_core" QVIEW4,
"wellbore_npdid_overview" QVIEW5
WHERE 
QVIEW1."wlbNpdidWellbore" IS NOT NULL AND
QVIEW1."wlbWellboreName" IS NOT NULL AND
QVIEW1."wlbCompletionYear" IS NOT NULL AND
QVIEW2."cmpNpdidCompany" IS NOT NULL AND
QVIEW2."cmpLongName" IS NOT NULL AND
(QVIEW2."cmpLongName" = QVIEW3."wlbDrillingOperator") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW3."wlbNpdidWellbore") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW4."wlbNpdidWellbore") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW5."wlbNpdidWellbore") AND
QVIEW4."lsuNpdidLithoStrat" IS NOT NULL AND
QVIEW4."lsuCoreLenght" IS NOT NULL AND
((QVIEW4."lsuCoreLenght" > 50) AND (QVIEW1."wlbCompletionYear" >= 2008))
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."wlbNpdidWellbore" AS VARCHAR(10485760)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW4."wlbCoreNumber" AS VARCHAR(10485760)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "wellbore", 
   7 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(QVIEW2."cmpLongName" AS VARCHAR(10485760)) AS "lenghtM", 
   4 AS "companyQuestType", NULL AS "companyLang", CAST(QVIEW1."wlbCompletionYear" AS VARCHAR(10485760)) AS "company", 
   5 AS "yearQuestType", NULL AS "yearLang", CAST(QVIEW6."wlbTotalCoreLength" AS VARCHAR(10485760)) AS "year"
 FROM 
"wellbore" QVIEW1,
"company" QVIEW2,
"wellbore_exploration_all" QVIEW3,
"wellbore_core" QVIEW4,
"wellbore_npdid_overview" QVIEW5,
"wellbore_core" QVIEW6
WHERE 
QVIEW1."wlbNpdidWellbore" IS NOT NULL AND
QVIEW1."wlbWellboreName" IS NOT NULL AND
QVIEW1."wlbCompletionYear" IS NOT NULL AND
QVIEW2."cmpNpdidCompany" IS NOT NULL AND
QVIEW2."cmpLongName" IS NOT NULL AND
(QVIEW2."cmpLongName" = QVIEW3."wlbDrillingOperator") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW3."wlbNpdidWellbore") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW4."wlbNpdidWellbore") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW5."wlbNpdidWellbore") AND
QVIEW4."wlbCoreNumber" IS NOT NULL AND
(QVIEW4."wlbCoreNumber" = QVIEW6."wlbCoreNumber") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW6."wlbNpdidWellbore") AND
QVIEW6."wlbTotalCoreLength" IS NOT NULL AND
((QVIEW6."wlbTotalCoreLength" > 50) AND (QVIEW1."wlbCompletionYear" >= 2008))
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", ('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."wlbNpdidWellbore" AS VARCHAR(10485760)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F') || '/stratum/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW4."lsuNpdidLithoStrat" AS VARCHAR(10485760)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F') || '/cores') AS "wellbore", 
   7 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(QVIEW2."cmpLongName" AS VARCHAR(10485760)) AS "lenghtM", 
   4 AS "companyQuestType", NULL AS "companyLang", CAST(QVIEW1."wlbCompletionYear" AS VARCHAR(10485760)) AS "company", 
   5 AS "yearQuestType", NULL AS "yearLang", CAST(QVIEW4."lsuCoreLenght" AS VARCHAR(10485760)) AS "year"
 FROM 
"wellbore" QVIEW1,
"company" QVIEW2,
"wellbore_exploration_all" QVIEW3,
"strat_litho_wellbore_core" QVIEW4,
"wellbore_npdid_overview" QVIEW5
WHERE 
QVIEW1."wlbNpdidWellbore" IS NOT NULL AND
QVIEW1."wlbWellboreName" IS NOT NULL AND
QVIEW1."wlbCompletionYear" IS NOT NULL AND
QVIEW2."cmpNpdidCompany" IS NOT NULL AND
QVIEW2."cmpLongName" IS NOT NULL AND
(QVIEW2."cmpLongName" = QVIEW3."wlbDrillingOperator") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW3."wlbNpdidWellbore") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW4."wlbNpdidWellbore") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW5."wlbNpdidWellbore") AND
QVIEW4."lsuNpdidLithoStrat" IS NOT NULL AND
QVIEW4."lsuCoreLenght" IS NOT NULL AND
((QVIEW4."lsuCoreLenght" > 50) AND (QVIEW1."wlbCompletionYear" >= 2008))
) SUB_QVIEW
ORDER BY SUB_QVIEW."wellbore"
