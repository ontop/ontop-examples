SELECT *
FROM (
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."wlbNpdidWellbore" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW6."wlbCoreNumber" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS VARCHAR(500)) AS "wellbore", 
   7 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(QVIEW3."cmpLongName" AS VARCHAR(500)) AS "lenghtM", 
   4 AS "companyQuestType", NULL AS "companyLang", CAST(QVIEW2."wlbCompletionYear" AS VARCHAR(500)) AS "company", 
   5 AS "yearQuestType", NULL AS "yearLang", CAST(QVIEW8."wlbTotalCoreLength" AS VARCHAR(500)) AS "year"
 FROM 
"npd_no_spatial_10"."wellbore_development_all" QVIEW1,
"npd_no_spatial_10"."wellbore_development_all" QVIEW2,
"npd_no_spatial_10"."company" QVIEW3,
"npd_no_spatial_10"."wellbore_exploration_all" QVIEW4,
"npd_no_spatial_10"."company" QVIEW5,
"npd_no_spatial_10"."wellbore_core" QVIEW6,
"npd_no_spatial_10"."wellbore_npdid_overview" QVIEW7,
"npd_no_spatial_10"."wellbore_core" QVIEW8,
"npd_no_spatial_10"."wellbore_core" QVIEW9
WHERE 
QVIEW1."wlbNpdidWellbore" IS NOT NULL AND
QVIEW1."wlbWellboreName" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW2."wlbNpdidWellbore") AND
QVIEW2."wlbCompletionYear" IS NOT NULL AND
QVIEW3."cmpNpdidCompany" IS NOT NULL AND
QVIEW3."cmpLongName" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW4."wlbNpdidWellbore") AND
(QVIEW4."wlbDrillingOperator" = QVIEW5."cmpLongName") AND
(QVIEW3."cmpNpdidCompany" = QVIEW5."cmpNpdidCompany") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW6."wlbNpdidWellbore") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW7."wlbNpdidWellbore") AND
QVIEW6."wlbCoreNumber" IS NOT NULL AND
(QVIEW6."wlbCoreNumber" = QVIEW8."wlbCoreNumber") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW8."wlbNpdidWellbore") AND
QVIEW8."wlbTotalCoreLength" IS NOT NULL AND
(QVIEW6."wlbCoreNumber" = QVIEW9."wlbCoreNumber") AND
(QVIEW9."wlbCoreIntervalUom" = '[m   ]') AND
(QVIEW1."wlbNpdidWellbore" = QVIEW9."wlbNpdidWellbore") AND
((QVIEW8."wlbTotalCoreLength" > 50) AND (QVIEW2."wlbCompletionYear" >= 2008))
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."wlbNpdidWellbore" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW6."wlbCoreNumber" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS VARCHAR(500)) AS "wellbore", 
   7 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(QVIEW3."cmpLongName" AS VARCHAR(500)) AS "lenghtM", 
   4 AS "companyQuestType", NULL AS "companyLang", CAST(QVIEW2."wlbCompletionYear" AS VARCHAR(500)) AS "company", 
   5 AS "yearQuestType", NULL AS "yearLang", CAST(QVIEW8."wlbTotalCoreLength" AS VARCHAR(500)) AS "year"
 FROM 
"npd_no_spatial_10"."wellbore_development_all" QVIEW1,
"npd_no_spatial_10"."wellbore_development_all" QVIEW2,
"npd_no_spatial_10"."company" QVIEW3,
"npd_no_spatial_10"."wellbore_development_all" QVIEW4,
"npd_no_spatial_10"."company" QVIEW5,
"npd_no_spatial_10"."wellbore_core" QVIEW6,
"npd_no_spatial_10"."wellbore_npdid_overview" QVIEW7,
"npd_no_spatial_10"."wellbore_core" QVIEW8,
"npd_no_spatial_10"."wellbore_core" QVIEW9
WHERE 
QVIEW1."wlbNpdidWellbore" IS NOT NULL AND
QVIEW1."wlbWellboreName" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW2."wlbNpdidWellbore") AND
QVIEW2."wlbCompletionYear" IS NOT NULL AND
QVIEW3."cmpNpdidCompany" IS NOT NULL AND
QVIEW3."cmpLongName" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW4."wlbNpdidWellbore") AND
(QVIEW4."wlbDrillingOperator" = QVIEW5."cmpLongName") AND
(QVIEW3."cmpNpdidCompany" = QVIEW5."cmpNpdidCompany") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW6."wlbNpdidWellbore") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW7."wlbNpdidWellbore") AND
QVIEW6."wlbCoreNumber" IS NOT NULL AND
(QVIEW6."wlbCoreNumber" = QVIEW8."wlbCoreNumber") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW8."wlbNpdidWellbore") AND
QVIEW8."wlbTotalCoreLength" IS NOT NULL AND
(QVIEW6."wlbCoreNumber" = QVIEW9."wlbCoreNumber") AND
(QVIEW9."wlbCoreIntervalUom" = '[m   ]') AND
(QVIEW1."wlbNpdidWellbore" = QVIEW9."wlbNpdidWellbore") AND
((QVIEW8."wlbTotalCoreLength" > 50) AND (QVIEW2."wlbCompletionYear" >= 2008))
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."wlbNpdidWellbore" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW6."wlbCoreNumber" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS VARCHAR(500)) AS "wellbore", 
   7 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(QVIEW3."cmpLongName" AS VARCHAR(500)) AS "lenghtM", 
   4 AS "companyQuestType", NULL AS "companyLang", CAST(QVIEW2."wlbCompletionYear" AS VARCHAR(500)) AS "company", 
   5 AS "yearQuestType", NULL AS "yearLang", CAST(QVIEW8."wlbTotalCoreLength" AS VARCHAR(500)) AS "year"
 FROM 
"npd_no_spatial_10"."wellbore_development_all" QVIEW1,
"npd_no_spatial_10"."wellbore_exploration_all" QVIEW2,
"npd_no_spatial_10"."company" QVIEW3,
"npd_no_spatial_10"."wellbore_exploration_all" QVIEW4,
"npd_no_spatial_10"."company" QVIEW5,
"npd_no_spatial_10"."wellbore_core" QVIEW6,
"npd_no_spatial_10"."wellbore_npdid_overview" QVIEW7,
"npd_no_spatial_10"."wellbore_core" QVIEW8,
"npd_no_spatial_10"."wellbore_core" QVIEW9
WHERE 
QVIEW1."wlbNpdidWellbore" IS NOT NULL AND
QVIEW1."wlbWellboreName" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW2."wlbNpdidWellbore") AND
QVIEW2."wlbCompletionYear" IS NOT NULL AND
QVIEW3."cmpNpdidCompany" IS NOT NULL AND
QVIEW3."cmpLongName" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW4."wlbNpdidWellbore") AND
(QVIEW4."wlbDrillingOperator" = QVIEW5."cmpLongName") AND
(QVIEW3."cmpNpdidCompany" = QVIEW5."cmpNpdidCompany") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW6."wlbNpdidWellbore") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW7."wlbNpdidWellbore") AND
QVIEW6."wlbCoreNumber" IS NOT NULL AND
(QVIEW6."wlbCoreNumber" = QVIEW8."wlbCoreNumber") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW8."wlbNpdidWellbore") AND
QVIEW8."wlbTotalCoreLength" IS NOT NULL AND
(QVIEW6."wlbCoreNumber" = QVIEW9."wlbCoreNumber") AND
(QVIEW9."wlbCoreIntervalUom" = '[m   ]') AND
(QVIEW1."wlbNpdidWellbore" = QVIEW9."wlbNpdidWellbore") AND
((QVIEW8."wlbTotalCoreLength" > 50) AND (QVIEW2."wlbCompletionYear" >= 2008))
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."wlbNpdidWellbore" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW6."wlbCoreNumber" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS VARCHAR(500)) AS "wellbore", 
   7 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(QVIEW3."cmpLongName" AS VARCHAR(500)) AS "lenghtM", 
   4 AS "companyQuestType", NULL AS "companyLang", CAST(QVIEW2."wlbCompletionYear" AS VARCHAR(500)) AS "company", 
   5 AS "yearQuestType", NULL AS "yearLang", CAST(QVIEW8."wlbTotalCoreLength" AS VARCHAR(500)) AS "year"
 FROM 
"npd_no_spatial_10"."wellbore_development_all" QVIEW1,
"npd_no_spatial_10"."wellbore_exploration_all" QVIEW2,
"npd_no_spatial_10"."company" QVIEW3,
"npd_no_spatial_10"."wellbore_development_all" QVIEW4,
"npd_no_spatial_10"."company" QVIEW5,
"npd_no_spatial_10"."wellbore_core" QVIEW6,
"npd_no_spatial_10"."wellbore_npdid_overview" QVIEW7,
"npd_no_spatial_10"."wellbore_core" QVIEW8,
"npd_no_spatial_10"."wellbore_core" QVIEW9
WHERE 
QVIEW1."wlbNpdidWellbore" IS NOT NULL AND
QVIEW1."wlbWellboreName" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW2."wlbNpdidWellbore") AND
QVIEW2."wlbCompletionYear" IS NOT NULL AND
QVIEW3."cmpNpdidCompany" IS NOT NULL AND
QVIEW3."cmpLongName" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW4."wlbNpdidWellbore") AND
(QVIEW4."wlbDrillingOperator" = QVIEW5."cmpLongName") AND
(QVIEW3."cmpNpdidCompany" = QVIEW5."cmpNpdidCompany") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW6."wlbNpdidWellbore") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW7."wlbNpdidWellbore") AND
QVIEW6."wlbCoreNumber" IS NOT NULL AND
(QVIEW6."wlbCoreNumber" = QVIEW8."wlbCoreNumber") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW8."wlbNpdidWellbore") AND
QVIEW8."wlbTotalCoreLength" IS NOT NULL AND
(QVIEW6."wlbCoreNumber" = QVIEW9."wlbCoreNumber") AND
(QVIEW9."wlbCoreIntervalUom" = '[m   ]') AND
(QVIEW1."wlbNpdidWellbore" = QVIEW9."wlbNpdidWellbore") AND
((QVIEW8."wlbTotalCoreLength" > 50) AND (QVIEW2."wlbCompletionYear" >= 2008))
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."wlbNpdidWellbore" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW6."wlbCoreNumber" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS VARCHAR(500)) AS "wellbore", 
   7 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(QVIEW3."cmpLongName" AS VARCHAR(500)) AS "lenghtM", 
   4 AS "companyQuestType", NULL AS "companyLang", CAST(QVIEW2."wlbCompletionYear" AS VARCHAR(500)) AS "company", 
   5 AS "yearQuestType", NULL AS "yearLang", CAST(QVIEW8."wlbTotalCoreLength" AS VARCHAR(500)) AS "year"
 FROM 
"npd_no_spatial_10"."wellbore_development_all" QVIEW1,
"npd_no_spatial_10"."wellbore_shallow_all" QVIEW2,
"npd_no_spatial_10"."company" QVIEW3,
"npd_no_spatial_10"."wellbore_exploration_all" QVIEW4,
"npd_no_spatial_10"."company" QVIEW5,
"npd_no_spatial_10"."wellbore_core" QVIEW6,
"npd_no_spatial_10"."wellbore_npdid_overview" QVIEW7,
"npd_no_spatial_10"."wellbore_core" QVIEW8,
"npd_no_spatial_10"."wellbore_core" QVIEW9
WHERE 
QVIEW1."wlbNpdidWellbore" IS NOT NULL AND
QVIEW1."wlbWellboreName" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW2."wlbNpdidWellbore") AND
QVIEW2."wlbCompletionYear" IS NOT NULL AND
QVIEW3."cmpNpdidCompany" IS NOT NULL AND
QVIEW3."cmpLongName" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW4."wlbNpdidWellbore") AND
(QVIEW4."wlbDrillingOperator" = QVIEW5."cmpLongName") AND
(QVIEW3."cmpNpdidCompany" = QVIEW5."cmpNpdidCompany") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW6."wlbNpdidWellbore") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW7."wlbNpdidWellbore") AND
QVIEW6."wlbCoreNumber" IS NOT NULL AND
(QVIEW6."wlbCoreNumber" = QVIEW8."wlbCoreNumber") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW8."wlbNpdidWellbore") AND
QVIEW8."wlbTotalCoreLength" IS NOT NULL AND
(QVIEW6."wlbCoreNumber" = QVIEW9."wlbCoreNumber") AND
(QVIEW9."wlbCoreIntervalUom" = '[m   ]') AND
(QVIEW1."wlbNpdidWellbore" = QVIEW9."wlbNpdidWellbore") AND
((QVIEW8."wlbTotalCoreLength" > 50) AND (QVIEW2."wlbCompletionYear" >= 2008))
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."wlbNpdidWellbore" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW6."wlbCoreNumber" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS VARCHAR(500)) AS "wellbore", 
   7 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(QVIEW3."cmpLongName" AS VARCHAR(500)) AS "lenghtM", 
   4 AS "companyQuestType", NULL AS "companyLang", CAST(QVIEW2."wlbCompletionYear" AS VARCHAR(500)) AS "company", 
   5 AS "yearQuestType", NULL AS "yearLang", CAST(QVIEW8."wlbTotalCoreLength" AS VARCHAR(500)) AS "year"
 FROM 
"npd_no_spatial_10"."wellbore_development_all" QVIEW1,
"npd_no_spatial_10"."wellbore_shallow_all" QVIEW2,
"npd_no_spatial_10"."company" QVIEW3,
"npd_no_spatial_10"."wellbore_development_all" QVIEW4,
"npd_no_spatial_10"."company" QVIEW5,
"npd_no_spatial_10"."wellbore_core" QVIEW6,
"npd_no_spatial_10"."wellbore_npdid_overview" QVIEW7,
"npd_no_spatial_10"."wellbore_core" QVIEW8,
"npd_no_spatial_10"."wellbore_core" QVIEW9
WHERE 
QVIEW1."wlbNpdidWellbore" IS NOT NULL AND
QVIEW1."wlbWellboreName" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW2."wlbNpdidWellbore") AND
QVIEW2."wlbCompletionYear" IS NOT NULL AND
QVIEW3."cmpNpdidCompany" IS NOT NULL AND
QVIEW3."cmpLongName" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW4."wlbNpdidWellbore") AND
(QVIEW4."wlbDrillingOperator" = QVIEW5."cmpLongName") AND
(QVIEW3."cmpNpdidCompany" = QVIEW5."cmpNpdidCompany") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW6."wlbNpdidWellbore") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW7."wlbNpdidWellbore") AND
QVIEW6."wlbCoreNumber" IS NOT NULL AND
(QVIEW6."wlbCoreNumber" = QVIEW8."wlbCoreNumber") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW8."wlbNpdidWellbore") AND
QVIEW8."wlbTotalCoreLength" IS NOT NULL AND
(QVIEW6."wlbCoreNumber" = QVIEW9."wlbCoreNumber") AND
(QVIEW9."wlbCoreIntervalUom" = '[m   ]') AND
(QVIEW1."wlbNpdidWellbore" = QVIEW9."wlbNpdidWellbore") AND
((QVIEW8."wlbTotalCoreLength" > 50) AND (QVIEW2."wlbCompletionYear" >= 2008))
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."wlbNpdidWellbore" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW6."wlbCoreNumber" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS VARCHAR(500)) AS "wellbore", 
   7 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(QVIEW3."cmpLongName" AS VARCHAR(500)) AS "lenghtM", 
   4 AS "companyQuestType", NULL AS "companyLang", CAST(QVIEW2."wlbCompletionYear" AS VARCHAR(500)) AS "company", 
   5 AS "yearQuestType", NULL AS "yearLang", CAST(QVIEW8."wlbTotalCoreLength" AS VARCHAR(500)) AS "year"
 FROM 
"npd_no_spatial_10"."wellbore_shallow_all" QVIEW1,
"npd_no_spatial_10"."wellbore_development_all" QVIEW2,
"npd_no_spatial_10"."company" QVIEW3,
"npd_no_spatial_10"."wellbore_exploration_all" QVIEW4,
"npd_no_spatial_10"."company" QVIEW5,
"npd_no_spatial_10"."wellbore_core" QVIEW6,
"npd_no_spatial_10"."wellbore_npdid_overview" QVIEW7,
"npd_no_spatial_10"."wellbore_core" QVIEW8,
"npd_no_spatial_10"."wellbore_core" QVIEW9
WHERE 
QVIEW1."wlbNpdidWellbore" IS NOT NULL AND
QVIEW1."wlbWellboreName" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW2."wlbNpdidWellbore") AND
QVIEW2."wlbCompletionYear" IS NOT NULL AND
QVIEW3."cmpNpdidCompany" IS NOT NULL AND
QVIEW3."cmpLongName" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW4."wlbNpdidWellbore") AND
(QVIEW4."wlbDrillingOperator" = QVIEW5."cmpLongName") AND
(QVIEW3."cmpNpdidCompany" = QVIEW5."cmpNpdidCompany") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW6."wlbNpdidWellbore") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW7."wlbNpdidWellbore") AND
QVIEW6."wlbCoreNumber" IS NOT NULL AND
(QVIEW6."wlbCoreNumber" = QVIEW8."wlbCoreNumber") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW8."wlbNpdidWellbore") AND
QVIEW8."wlbTotalCoreLength" IS NOT NULL AND
(QVIEW6."wlbCoreNumber" = QVIEW9."wlbCoreNumber") AND
(QVIEW9."wlbCoreIntervalUom" = '[m   ]') AND
(QVIEW1."wlbNpdidWellbore" = QVIEW9."wlbNpdidWellbore") AND
((QVIEW8."wlbTotalCoreLength" > 50) AND (QVIEW2."wlbCompletionYear" >= 2008))
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."wlbNpdidWellbore" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW6."wlbCoreNumber" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS VARCHAR(500)) AS "wellbore", 
   7 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(QVIEW3."cmpLongName" AS VARCHAR(500)) AS "lenghtM", 
   4 AS "companyQuestType", NULL AS "companyLang", CAST(QVIEW2."wlbCompletionYear" AS VARCHAR(500)) AS "company", 
   5 AS "yearQuestType", NULL AS "yearLang", CAST(QVIEW8."wlbTotalCoreLength" AS VARCHAR(500)) AS "year"
 FROM 
"npd_no_spatial_10"."wellbore_shallow_all" QVIEW1,
"npd_no_spatial_10"."wellbore_development_all" QVIEW2,
"npd_no_spatial_10"."company" QVIEW3,
"npd_no_spatial_10"."wellbore_development_all" QVIEW4,
"npd_no_spatial_10"."company" QVIEW5,
"npd_no_spatial_10"."wellbore_core" QVIEW6,
"npd_no_spatial_10"."wellbore_npdid_overview" QVIEW7,
"npd_no_spatial_10"."wellbore_core" QVIEW8,
"npd_no_spatial_10"."wellbore_core" QVIEW9
WHERE 
QVIEW1."wlbNpdidWellbore" IS NOT NULL AND
QVIEW1."wlbWellboreName" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW2."wlbNpdidWellbore") AND
QVIEW2."wlbCompletionYear" IS NOT NULL AND
QVIEW3."cmpNpdidCompany" IS NOT NULL AND
QVIEW3."cmpLongName" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW4."wlbNpdidWellbore") AND
(QVIEW4."wlbDrillingOperator" = QVIEW5."cmpLongName") AND
(QVIEW3."cmpNpdidCompany" = QVIEW5."cmpNpdidCompany") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW6."wlbNpdidWellbore") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW7."wlbNpdidWellbore") AND
QVIEW6."wlbCoreNumber" IS NOT NULL AND
(QVIEW6."wlbCoreNumber" = QVIEW8."wlbCoreNumber") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW8."wlbNpdidWellbore") AND
QVIEW8."wlbTotalCoreLength" IS NOT NULL AND
(QVIEW6."wlbCoreNumber" = QVIEW9."wlbCoreNumber") AND
(QVIEW9."wlbCoreIntervalUom" = '[m   ]') AND
(QVIEW1."wlbNpdidWellbore" = QVIEW9."wlbNpdidWellbore") AND
((QVIEW8."wlbTotalCoreLength" > 50) AND (QVIEW2."wlbCompletionYear" >= 2008))
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."wlbNpdidWellbore" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW6."wlbCoreNumber" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS VARCHAR(500)) AS "wellbore", 
   7 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(QVIEW3."cmpLongName" AS VARCHAR(500)) AS "lenghtM", 
   4 AS "companyQuestType", NULL AS "companyLang", CAST(QVIEW2."wlbCompletionYear" AS VARCHAR(500)) AS "company", 
   5 AS "yearQuestType", NULL AS "yearLang", CAST(QVIEW8."wlbTotalCoreLength" AS VARCHAR(500)) AS "year"
 FROM 
"npd_no_spatial_10"."wellbore_shallow_all" QVIEW1,
"npd_no_spatial_10"."wellbore_exploration_all" QVIEW2,
"npd_no_spatial_10"."company" QVIEW3,
"npd_no_spatial_10"."wellbore_exploration_all" QVIEW4,
"npd_no_spatial_10"."company" QVIEW5,
"npd_no_spatial_10"."wellbore_core" QVIEW6,
"npd_no_spatial_10"."wellbore_npdid_overview" QVIEW7,
"npd_no_spatial_10"."wellbore_core" QVIEW8,
"npd_no_spatial_10"."wellbore_core" QVIEW9
WHERE 
QVIEW1."wlbNpdidWellbore" IS NOT NULL AND
QVIEW1."wlbWellboreName" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW2."wlbNpdidWellbore") AND
QVIEW2."wlbCompletionYear" IS NOT NULL AND
QVIEW3."cmpNpdidCompany" IS NOT NULL AND
QVIEW3."cmpLongName" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW4."wlbNpdidWellbore") AND
(QVIEW4."wlbDrillingOperator" = QVIEW5."cmpLongName") AND
(QVIEW3."cmpNpdidCompany" = QVIEW5."cmpNpdidCompany") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW6."wlbNpdidWellbore") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW7."wlbNpdidWellbore") AND
QVIEW6."wlbCoreNumber" IS NOT NULL AND
(QVIEW6."wlbCoreNumber" = QVIEW8."wlbCoreNumber") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW8."wlbNpdidWellbore") AND
QVIEW8."wlbTotalCoreLength" IS NOT NULL AND
(QVIEW6."wlbCoreNumber" = QVIEW9."wlbCoreNumber") AND
(QVIEW9."wlbCoreIntervalUom" = '[m   ]') AND
(QVIEW1."wlbNpdidWellbore" = QVIEW9."wlbNpdidWellbore") AND
((QVIEW8."wlbTotalCoreLength" > 50) AND (QVIEW2."wlbCompletionYear" >= 2008))
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."wlbNpdidWellbore" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW6."wlbCoreNumber" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS VARCHAR(500)) AS "wellbore", 
   7 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(QVIEW3."cmpLongName" AS VARCHAR(500)) AS "lenghtM", 
   4 AS "companyQuestType", NULL AS "companyLang", CAST(QVIEW2."wlbCompletionYear" AS VARCHAR(500)) AS "company", 
   5 AS "yearQuestType", NULL AS "yearLang", CAST(QVIEW8."wlbTotalCoreLength" AS VARCHAR(500)) AS "year"
 FROM 
"npd_no_spatial_10"."wellbore_shallow_all" QVIEW1,
"npd_no_spatial_10"."wellbore_exploration_all" QVIEW2,
"npd_no_spatial_10"."company" QVIEW3,
"npd_no_spatial_10"."wellbore_development_all" QVIEW4,
"npd_no_spatial_10"."company" QVIEW5,
"npd_no_spatial_10"."wellbore_core" QVIEW6,
"npd_no_spatial_10"."wellbore_npdid_overview" QVIEW7,
"npd_no_spatial_10"."wellbore_core" QVIEW8,
"npd_no_spatial_10"."wellbore_core" QVIEW9
WHERE 
QVIEW1."wlbNpdidWellbore" IS NOT NULL AND
QVIEW1."wlbWellboreName" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW2."wlbNpdidWellbore") AND
QVIEW2."wlbCompletionYear" IS NOT NULL AND
QVIEW3."cmpNpdidCompany" IS NOT NULL AND
QVIEW3."cmpLongName" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW4."wlbNpdidWellbore") AND
(QVIEW4."wlbDrillingOperator" = QVIEW5."cmpLongName") AND
(QVIEW3."cmpNpdidCompany" = QVIEW5."cmpNpdidCompany") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW6."wlbNpdidWellbore") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW7."wlbNpdidWellbore") AND
QVIEW6."wlbCoreNumber" IS NOT NULL AND
(QVIEW6."wlbCoreNumber" = QVIEW8."wlbCoreNumber") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW8."wlbNpdidWellbore") AND
QVIEW8."wlbTotalCoreLength" IS NOT NULL AND
(QVIEW6."wlbCoreNumber" = QVIEW9."wlbCoreNumber") AND
(QVIEW9."wlbCoreIntervalUom" = '[m   ]') AND
(QVIEW1."wlbNpdidWellbore" = QVIEW9."wlbNpdidWellbore") AND
((QVIEW8."wlbTotalCoreLength" > 50) AND (QVIEW2."wlbCompletionYear" >= 2008))
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."wlbNpdidWellbore" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW6."wlbCoreNumber" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS VARCHAR(500)) AS "wellbore", 
   7 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(QVIEW3."cmpLongName" AS VARCHAR(500)) AS "lenghtM", 
   4 AS "companyQuestType", NULL AS "companyLang", CAST(QVIEW2."wlbCompletionYear" AS VARCHAR(500)) AS "company", 
   5 AS "yearQuestType", NULL AS "yearLang", CAST(QVIEW8."wlbTotalCoreLength" AS VARCHAR(500)) AS "year"
 FROM 
"npd_no_spatial_10"."wellbore_shallow_all" QVIEW1,
"npd_no_spatial_10"."wellbore_shallow_all" QVIEW2,
"npd_no_spatial_10"."company" QVIEW3,
"npd_no_spatial_10"."wellbore_exploration_all" QVIEW4,
"npd_no_spatial_10"."company" QVIEW5,
"npd_no_spatial_10"."wellbore_core" QVIEW6,
"npd_no_spatial_10"."wellbore_npdid_overview" QVIEW7,
"npd_no_spatial_10"."wellbore_core" QVIEW8,
"npd_no_spatial_10"."wellbore_core" QVIEW9
WHERE 
QVIEW1."wlbNpdidWellbore" IS NOT NULL AND
QVIEW1."wlbWellboreName" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW2."wlbNpdidWellbore") AND
QVIEW2."wlbCompletionYear" IS NOT NULL AND
QVIEW3."cmpNpdidCompany" IS NOT NULL AND
QVIEW3."cmpLongName" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW4."wlbNpdidWellbore") AND
(QVIEW4."wlbDrillingOperator" = QVIEW5."cmpLongName") AND
(QVIEW3."cmpNpdidCompany" = QVIEW5."cmpNpdidCompany") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW6."wlbNpdidWellbore") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW7."wlbNpdidWellbore") AND
QVIEW6."wlbCoreNumber" IS NOT NULL AND
(QVIEW6."wlbCoreNumber" = QVIEW8."wlbCoreNumber") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW8."wlbNpdidWellbore") AND
QVIEW8."wlbTotalCoreLength" IS NOT NULL AND
(QVIEW6."wlbCoreNumber" = QVIEW9."wlbCoreNumber") AND
(QVIEW9."wlbCoreIntervalUom" = '[m   ]') AND
(QVIEW1."wlbNpdidWellbore" = QVIEW9."wlbNpdidWellbore") AND
((QVIEW8."wlbTotalCoreLength" > 50) AND (QVIEW2."wlbCompletionYear" >= 2008))
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."wlbNpdidWellbore" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW6."wlbCoreNumber" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS VARCHAR(500)) AS "wellbore", 
   7 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(QVIEW3."cmpLongName" AS VARCHAR(500)) AS "lenghtM", 
   4 AS "companyQuestType", NULL AS "companyLang", CAST(QVIEW2."wlbCompletionYear" AS VARCHAR(500)) AS "company", 
   5 AS "yearQuestType", NULL AS "yearLang", CAST(QVIEW8."wlbTotalCoreLength" AS VARCHAR(500)) AS "year"
 FROM 
"npd_no_spatial_10"."wellbore_shallow_all" QVIEW1,
"npd_no_spatial_10"."wellbore_shallow_all" QVIEW2,
"npd_no_spatial_10"."company" QVIEW3,
"npd_no_spatial_10"."wellbore_development_all" QVIEW4,
"npd_no_spatial_10"."company" QVIEW5,
"npd_no_spatial_10"."wellbore_core" QVIEW6,
"npd_no_spatial_10"."wellbore_npdid_overview" QVIEW7,
"npd_no_spatial_10"."wellbore_core" QVIEW8,
"npd_no_spatial_10"."wellbore_core" QVIEW9
WHERE 
QVIEW1."wlbNpdidWellbore" IS NOT NULL AND
QVIEW1."wlbWellboreName" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW2."wlbNpdidWellbore") AND
QVIEW2."wlbCompletionYear" IS NOT NULL AND
QVIEW3."cmpNpdidCompany" IS NOT NULL AND
QVIEW3."cmpLongName" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW4."wlbNpdidWellbore") AND
(QVIEW4."wlbDrillingOperator" = QVIEW5."cmpLongName") AND
(QVIEW3."cmpNpdidCompany" = QVIEW5."cmpNpdidCompany") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW6."wlbNpdidWellbore") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW7."wlbNpdidWellbore") AND
QVIEW6."wlbCoreNumber" IS NOT NULL AND
(QVIEW6."wlbCoreNumber" = QVIEW8."wlbCoreNumber") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW8."wlbNpdidWellbore") AND
QVIEW8."wlbTotalCoreLength" IS NOT NULL AND
(QVIEW6."wlbCoreNumber" = QVIEW9."wlbCoreNumber") AND
(QVIEW9."wlbCoreIntervalUom" = '[m   ]') AND
(QVIEW1."wlbNpdidWellbore" = QVIEW9."wlbNpdidWellbore") AND
((QVIEW8."wlbTotalCoreLength" > 50) AND (QVIEW2."wlbCompletionYear" >= 2008))
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."wlbNpdidWellbore" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW6."wlbCoreNumber" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS VARCHAR(500)) AS "wellbore", 
   7 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(QVIEW3."cmpLongName" AS VARCHAR(500)) AS "lenghtM", 
   4 AS "companyQuestType", NULL AS "companyLang", CAST(QVIEW2."wlbCompletionYear" AS VARCHAR(500)) AS "company", 
   5 AS "yearQuestType", NULL AS "yearLang", CAST(QVIEW8."wlbTotalCoreLength" AS VARCHAR(500)) AS "year"
 FROM 
"npd_no_spatial_10"."wellbore_npdid_overview" QVIEW1,
"npd_no_spatial_10"."wellbore_development_all" QVIEW2,
"npd_no_spatial_10"."company" QVIEW3,
"npd_no_spatial_10"."wellbore_exploration_all" QVIEW4,
"npd_no_spatial_10"."company" QVIEW5,
"npd_no_spatial_10"."wellbore_core" QVIEW6,
"npd_no_spatial_10"."wellbore_npdid_overview" QVIEW7,
"npd_no_spatial_10"."wellbore_core" QVIEW8,
"npd_no_spatial_10"."wellbore_core" QVIEW9
WHERE 
QVIEW1."wlbNpdidWellbore" IS NOT NULL AND
QVIEW1."wlbWellboreName" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW2."wlbNpdidWellbore") AND
QVIEW2."wlbCompletionYear" IS NOT NULL AND
QVIEW3."cmpNpdidCompany" IS NOT NULL AND
QVIEW3."cmpLongName" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW4."wlbNpdidWellbore") AND
(QVIEW4."wlbDrillingOperator" = QVIEW5."cmpLongName") AND
(QVIEW3."cmpNpdidCompany" = QVIEW5."cmpNpdidCompany") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW6."wlbNpdidWellbore") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW7."wlbNpdidWellbore") AND
QVIEW6."wlbCoreNumber" IS NOT NULL AND
(QVIEW6."wlbCoreNumber" = QVIEW8."wlbCoreNumber") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW8."wlbNpdidWellbore") AND
QVIEW8."wlbTotalCoreLength" IS NOT NULL AND
(QVIEW6."wlbCoreNumber" = QVIEW9."wlbCoreNumber") AND
(QVIEW9."wlbCoreIntervalUom" = '[m   ]') AND
(QVIEW1."wlbNpdidWellbore" = QVIEW9."wlbNpdidWellbore") AND
((QVIEW8."wlbTotalCoreLength" > 50) AND (QVIEW2."wlbCompletionYear" >= 2008))
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."wlbNpdidWellbore" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW6."wlbCoreNumber" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS VARCHAR(500)) AS "wellbore", 
   7 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(QVIEW3."cmpLongName" AS VARCHAR(500)) AS "lenghtM", 
   4 AS "companyQuestType", NULL AS "companyLang", CAST(QVIEW2."wlbCompletionYear" AS VARCHAR(500)) AS "company", 
   5 AS "yearQuestType", NULL AS "yearLang", CAST(QVIEW8."wlbTotalCoreLength" AS VARCHAR(500)) AS "year"
 FROM 
"npd_no_spatial_10"."wellbore_npdid_overview" QVIEW1,
"npd_no_spatial_10"."wellbore_development_all" QVIEW2,
"npd_no_spatial_10"."company" QVIEW3,
"npd_no_spatial_10"."wellbore_development_all" QVIEW4,
"npd_no_spatial_10"."company" QVIEW5,
"npd_no_spatial_10"."wellbore_core" QVIEW6,
"npd_no_spatial_10"."wellbore_npdid_overview" QVIEW7,
"npd_no_spatial_10"."wellbore_core" QVIEW8,
"npd_no_spatial_10"."wellbore_core" QVIEW9
WHERE 
QVIEW1."wlbNpdidWellbore" IS NOT NULL AND
QVIEW1."wlbWellboreName" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW2."wlbNpdidWellbore") AND
QVIEW2."wlbCompletionYear" IS NOT NULL AND
QVIEW3."cmpNpdidCompany" IS NOT NULL AND
QVIEW3."cmpLongName" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW4."wlbNpdidWellbore") AND
(QVIEW4."wlbDrillingOperator" = QVIEW5."cmpLongName") AND
(QVIEW3."cmpNpdidCompany" = QVIEW5."cmpNpdidCompany") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW6."wlbNpdidWellbore") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW7."wlbNpdidWellbore") AND
QVIEW6."wlbCoreNumber" IS NOT NULL AND
(QVIEW6."wlbCoreNumber" = QVIEW8."wlbCoreNumber") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW8."wlbNpdidWellbore") AND
QVIEW8."wlbTotalCoreLength" IS NOT NULL AND
(QVIEW6."wlbCoreNumber" = QVIEW9."wlbCoreNumber") AND
(QVIEW9."wlbCoreIntervalUom" = '[m   ]') AND
(QVIEW1."wlbNpdidWellbore" = QVIEW9."wlbNpdidWellbore") AND
((QVIEW8."wlbTotalCoreLength" > 50) AND (QVIEW2."wlbCompletionYear" >= 2008))
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."wlbNpdidWellbore" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW6."wlbCoreNumber" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS VARCHAR(500)) AS "wellbore", 
   7 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(QVIEW3."cmpLongName" AS VARCHAR(500)) AS "lenghtM", 
   4 AS "companyQuestType", NULL AS "companyLang", CAST(QVIEW2."wlbCompletionYear" AS VARCHAR(500)) AS "company", 
   5 AS "yearQuestType", NULL AS "yearLang", CAST(QVIEW8."wlbTotalCoreLength" AS VARCHAR(500)) AS "year"
 FROM 
"npd_no_spatial_10"."wellbore_npdid_overview" QVIEW1,
"npd_no_spatial_10"."wellbore_exploration_all" QVIEW2,
"npd_no_spatial_10"."company" QVIEW3,
"npd_no_spatial_10"."wellbore_exploration_all" QVIEW4,
"npd_no_spatial_10"."company" QVIEW5,
"npd_no_spatial_10"."wellbore_core" QVIEW6,
"npd_no_spatial_10"."wellbore_npdid_overview" QVIEW7,
"npd_no_spatial_10"."wellbore_core" QVIEW8,
"npd_no_spatial_10"."wellbore_core" QVIEW9
WHERE 
QVIEW1."wlbNpdidWellbore" IS NOT NULL AND
QVIEW1."wlbWellboreName" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW2."wlbNpdidWellbore") AND
QVIEW2."wlbCompletionYear" IS NOT NULL AND
QVIEW3."cmpNpdidCompany" IS NOT NULL AND
QVIEW3."cmpLongName" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW4."wlbNpdidWellbore") AND
(QVIEW4."wlbDrillingOperator" = QVIEW5."cmpLongName") AND
(QVIEW3."cmpNpdidCompany" = QVIEW5."cmpNpdidCompany") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW6."wlbNpdidWellbore") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW7."wlbNpdidWellbore") AND
QVIEW6."wlbCoreNumber" IS NOT NULL AND
(QVIEW6."wlbCoreNumber" = QVIEW8."wlbCoreNumber") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW8."wlbNpdidWellbore") AND
QVIEW8."wlbTotalCoreLength" IS NOT NULL AND
(QVIEW6."wlbCoreNumber" = QVIEW9."wlbCoreNumber") AND
(QVIEW9."wlbCoreIntervalUom" = '[m   ]') AND
(QVIEW1."wlbNpdidWellbore" = QVIEW9."wlbNpdidWellbore") AND
((QVIEW8."wlbTotalCoreLength" > 50) AND (QVIEW2."wlbCompletionYear" >= 2008))
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."wlbNpdidWellbore" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW6."wlbCoreNumber" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS VARCHAR(500)) AS "wellbore", 
   7 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(QVIEW3."cmpLongName" AS VARCHAR(500)) AS "lenghtM", 
   4 AS "companyQuestType", NULL AS "companyLang", CAST(QVIEW2."wlbCompletionYear" AS VARCHAR(500)) AS "company", 
   5 AS "yearQuestType", NULL AS "yearLang", CAST(QVIEW8."wlbTotalCoreLength" AS VARCHAR(500)) AS "year"
 FROM 
"npd_no_spatial_10"."wellbore_npdid_overview" QVIEW1,
"npd_no_spatial_10"."wellbore_exploration_all" QVIEW2,
"npd_no_spatial_10"."company" QVIEW3,
"npd_no_spatial_10"."wellbore_development_all" QVIEW4,
"npd_no_spatial_10"."company" QVIEW5,
"npd_no_spatial_10"."wellbore_core" QVIEW6,
"npd_no_spatial_10"."wellbore_npdid_overview" QVIEW7,
"npd_no_spatial_10"."wellbore_core" QVIEW8,
"npd_no_spatial_10"."wellbore_core" QVIEW9
WHERE 
QVIEW1."wlbNpdidWellbore" IS NOT NULL AND
QVIEW1."wlbWellboreName" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW2."wlbNpdidWellbore") AND
QVIEW2."wlbCompletionYear" IS NOT NULL AND
QVIEW3."cmpNpdidCompany" IS NOT NULL AND
QVIEW3."cmpLongName" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW4."wlbNpdidWellbore") AND
(QVIEW4."wlbDrillingOperator" = QVIEW5."cmpLongName") AND
(QVIEW3."cmpNpdidCompany" = QVIEW5."cmpNpdidCompany") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW6."wlbNpdidWellbore") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW7."wlbNpdidWellbore") AND
QVIEW6."wlbCoreNumber" IS NOT NULL AND
(QVIEW6."wlbCoreNumber" = QVIEW8."wlbCoreNumber") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW8."wlbNpdidWellbore") AND
QVIEW8."wlbTotalCoreLength" IS NOT NULL AND
(QVIEW6."wlbCoreNumber" = QVIEW9."wlbCoreNumber") AND
(QVIEW9."wlbCoreIntervalUom" = '[m   ]') AND
(QVIEW1."wlbNpdidWellbore" = QVIEW9."wlbNpdidWellbore") AND
((QVIEW8."wlbTotalCoreLength" > 50) AND (QVIEW2."wlbCompletionYear" >= 2008))
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."wlbNpdidWellbore" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW6."wlbCoreNumber" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS VARCHAR(500)) AS "wellbore", 
   7 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(QVIEW3."cmpLongName" AS VARCHAR(500)) AS "lenghtM", 
   4 AS "companyQuestType", NULL AS "companyLang", CAST(QVIEW2."wlbCompletionYear" AS VARCHAR(500)) AS "company", 
   5 AS "yearQuestType", NULL AS "yearLang", CAST(QVIEW8."wlbTotalCoreLength" AS VARCHAR(500)) AS "year"
 FROM 
"npd_no_spatial_10"."wellbore_npdid_overview" QVIEW1,
"npd_no_spatial_10"."wellbore_shallow_all" QVIEW2,
"npd_no_spatial_10"."company" QVIEW3,
"npd_no_spatial_10"."wellbore_exploration_all" QVIEW4,
"npd_no_spatial_10"."company" QVIEW5,
"npd_no_spatial_10"."wellbore_core" QVIEW6,
"npd_no_spatial_10"."wellbore_npdid_overview" QVIEW7,
"npd_no_spatial_10"."wellbore_core" QVIEW8,
"npd_no_spatial_10"."wellbore_core" QVIEW9
WHERE 
QVIEW1."wlbNpdidWellbore" IS NOT NULL AND
QVIEW1."wlbWellboreName" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW2."wlbNpdidWellbore") AND
QVIEW2."wlbCompletionYear" IS NOT NULL AND
QVIEW3."cmpNpdidCompany" IS NOT NULL AND
QVIEW3."cmpLongName" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW4."wlbNpdidWellbore") AND
(QVIEW4."wlbDrillingOperator" = QVIEW5."cmpLongName") AND
(QVIEW3."cmpNpdidCompany" = QVIEW5."cmpNpdidCompany") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW6."wlbNpdidWellbore") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW7."wlbNpdidWellbore") AND
QVIEW6."wlbCoreNumber" IS NOT NULL AND
(QVIEW6."wlbCoreNumber" = QVIEW8."wlbCoreNumber") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW8."wlbNpdidWellbore") AND
QVIEW8."wlbTotalCoreLength" IS NOT NULL AND
(QVIEW6."wlbCoreNumber" = QVIEW9."wlbCoreNumber") AND
(QVIEW9."wlbCoreIntervalUom" = '[m   ]') AND
(QVIEW1."wlbNpdidWellbore" = QVIEW9."wlbNpdidWellbore") AND
((QVIEW8."wlbTotalCoreLength" > 50) AND (QVIEW2."wlbCompletionYear" >= 2008))
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."wlbNpdidWellbore" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW6."wlbCoreNumber" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS VARCHAR(500)) AS "wellbore", 
   7 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(QVIEW3."cmpLongName" AS VARCHAR(500)) AS "lenghtM", 
   4 AS "companyQuestType", NULL AS "companyLang", CAST(QVIEW2."wlbCompletionYear" AS VARCHAR(500)) AS "company", 
   5 AS "yearQuestType", NULL AS "yearLang", CAST(QVIEW8."wlbTotalCoreLength" AS VARCHAR(500)) AS "year"
 FROM 
"npd_no_spatial_10"."wellbore_npdid_overview" QVIEW1,
"npd_no_spatial_10"."wellbore_shallow_all" QVIEW2,
"npd_no_spatial_10"."company" QVIEW3,
"npd_no_spatial_10"."wellbore_development_all" QVIEW4,
"npd_no_spatial_10"."company" QVIEW5,
"npd_no_spatial_10"."wellbore_core" QVIEW6,
"npd_no_spatial_10"."wellbore_npdid_overview" QVIEW7,
"npd_no_spatial_10"."wellbore_core" QVIEW8,
"npd_no_spatial_10"."wellbore_core" QVIEW9
WHERE 
QVIEW1."wlbNpdidWellbore" IS NOT NULL AND
QVIEW1."wlbWellboreName" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW2."wlbNpdidWellbore") AND
QVIEW2."wlbCompletionYear" IS NOT NULL AND
QVIEW3."cmpNpdidCompany" IS NOT NULL AND
QVIEW3."cmpLongName" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW4."wlbNpdidWellbore") AND
(QVIEW4."wlbDrillingOperator" = QVIEW5."cmpLongName") AND
(QVIEW3."cmpNpdidCompany" = QVIEW5."cmpNpdidCompany") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW6."wlbNpdidWellbore") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW7."wlbNpdidWellbore") AND
QVIEW6."wlbCoreNumber" IS NOT NULL AND
(QVIEW6."wlbCoreNumber" = QVIEW8."wlbCoreNumber") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW8."wlbNpdidWellbore") AND
QVIEW8."wlbTotalCoreLength" IS NOT NULL AND
(QVIEW6."wlbCoreNumber" = QVIEW9."wlbCoreNumber") AND
(QVIEW9."wlbCoreIntervalUom" = '[m   ]') AND
(QVIEW1."wlbNpdidWellbore" = QVIEW9."wlbNpdidWellbore") AND
((QVIEW8."wlbTotalCoreLength" > 50) AND (QVIEW2."wlbCompletionYear" >= 2008))
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."wlbNpdidWellbore" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW6."wlbCoreNumber" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS VARCHAR(500)) AS "wellbore", 
   7 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(QVIEW3."cmpLongName" AS VARCHAR(500)) AS "lenghtM", 
   4 AS "companyQuestType", NULL AS "companyLang", CAST(QVIEW2."wlbCompletionYear" AS VARCHAR(500)) AS "company", 
   5 AS "yearQuestType", NULL AS "yearLang", CAST(QVIEW8."wlbTotalCoreLength" AS VARCHAR(500)) AS "year"
 FROM 
"npd_no_spatial_10"."wellbore_exploration_all" QVIEW1,
"npd_no_spatial_10"."wellbore_development_all" QVIEW2,
"npd_no_spatial_10"."company" QVIEW3,
"npd_no_spatial_10"."wellbore_exploration_all" QVIEW4,
"npd_no_spatial_10"."company" QVIEW5,
"npd_no_spatial_10"."wellbore_core" QVIEW6,
"npd_no_spatial_10"."wellbore_npdid_overview" QVIEW7,
"npd_no_spatial_10"."wellbore_core" QVIEW8,
"npd_no_spatial_10"."wellbore_core" QVIEW9
WHERE 
QVIEW1."wlbNpdidWellbore" IS NOT NULL AND
QVIEW1."wlbWellboreName" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW2."wlbNpdidWellbore") AND
QVIEW2."wlbCompletionYear" IS NOT NULL AND
QVIEW3."cmpNpdidCompany" IS NOT NULL AND
QVIEW3."cmpLongName" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW4."wlbNpdidWellbore") AND
(QVIEW4."wlbDrillingOperator" = QVIEW5."cmpLongName") AND
(QVIEW3."cmpNpdidCompany" = QVIEW5."cmpNpdidCompany") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW6."wlbNpdidWellbore") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW7."wlbNpdidWellbore") AND
QVIEW6."wlbCoreNumber" IS NOT NULL AND
(QVIEW6."wlbCoreNumber" = QVIEW8."wlbCoreNumber") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW8."wlbNpdidWellbore") AND
QVIEW8."wlbTotalCoreLength" IS NOT NULL AND
(QVIEW6."wlbCoreNumber" = QVIEW9."wlbCoreNumber") AND
(QVIEW9."wlbCoreIntervalUom" = '[m   ]') AND
(QVIEW1."wlbNpdidWellbore" = QVIEW9."wlbNpdidWellbore") AND
((QVIEW8."wlbTotalCoreLength" > 50) AND (QVIEW2."wlbCompletionYear" >= 2008))
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."wlbNpdidWellbore" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW6."wlbCoreNumber" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS VARCHAR(500)) AS "wellbore", 
   7 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(QVIEW3."cmpLongName" AS VARCHAR(500)) AS "lenghtM", 
   4 AS "companyQuestType", NULL AS "companyLang", CAST(QVIEW2."wlbCompletionYear" AS VARCHAR(500)) AS "company", 
   5 AS "yearQuestType", NULL AS "yearLang", CAST(QVIEW8."wlbTotalCoreLength" AS VARCHAR(500)) AS "year"
 FROM 
"npd_no_spatial_10"."wellbore_exploration_all" QVIEW1,
"npd_no_spatial_10"."wellbore_development_all" QVIEW2,
"npd_no_spatial_10"."company" QVIEW3,
"npd_no_spatial_10"."wellbore_development_all" QVIEW4,
"npd_no_spatial_10"."company" QVIEW5,
"npd_no_spatial_10"."wellbore_core" QVIEW6,
"npd_no_spatial_10"."wellbore_npdid_overview" QVIEW7,
"npd_no_spatial_10"."wellbore_core" QVIEW8,
"npd_no_spatial_10"."wellbore_core" QVIEW9
WHERE 
QVIEW1."wlbNpdidWellbore" IS NOT NULL AND
QVIEW1."wlbWellboreName" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW2."wlbNpdidWellbore") AND
QVIEW2."wlbCompletionYear" IS NOT NULL AND
QVIEW3."cmpNpdidCompany" IS NOT NULL AND
QVIEW3."cmpLongName" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW4."wlbNpdidWellbore") AND
(QVIEW4."wlbDrillingOperator" = QVIEW5."cmpLongName") AND
(QVIEW3."cmpNpdidCompany" = QVIEW5."cmpNpdidCompany") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW6."wlbNpdidWellbore") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW7."wlbNpdidWellbore") AND
QVIEW6."wlbCoreNumber" IS NOT NULL AND
(QVIEW6."wlbCoreNumber" = QVIEW8."wlbCoreNumber") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW8."wlbNpdidWellbore") AND
QVIEW8."wlbTotalCoreLength" IS NOT NULL AND
(QVIEW6."wlbCoreNumber" = QVIEW9."wlbCoreNumber") AND
(QVIEW9."wlbCoreIntervalUom" = '[m   ]') AND
(QVIEW1."wlbNpdidWellbore" = QVIEW9."wlbNpdidWellbore") AND
((QVIEW8."wlbTotalCoreLength" > 50) AND (QVIEW2."wlbCompletionYear" >= 2008))
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."wlbNpdidWellbore" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW6."wlbCoreNumber" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS VARCHAR(500)) AS "wellbore", 
   7 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(QVIEW3."cmpLongName" AS VARCHAR(500)) AS "lenghtM", 
   4 AS "companyQuestType", NULL AS "companyLang", CAST(QVIEW2."wlbCompletionYear" AS VARCHAR(500)) AS "company", 
   5 AS "yearQuestType", NULL AS "yearLang", CAST(QVIEW8."wlbTotalCoreLength" AS VARCHAR(500)) AS "year"
 FROM 
"npd_no_spatial_10"."wellbore_exploration_all" QVIEW1,
"npd_no_spatial_10"."wellbore_exploration_all" QVIEW2,
"npd_no_spatial_10"."company" QVIEW3,
"npd_no_spatial_10"."wellbore_exploration_all" QVIEW4,
"npd_no_spatial_10"."company" QVIEW5,
"npd_no_spatial_10"."wellbore_core" QVIEW6,
"npd_no_spatial_10"."wellbore_npdid_overview" QVIEW7,
"npd_no_spatial_10"."wellbore_core" QVIEW8,
"npd_no_spatial_10"."wellbore_core" QVIEW9
WHERE 
QVIEW1."wlbNpdidWellbore" IS NOT NULL AND
QVIEW1."wlbWellboreName" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW2."wlbNpdidWellbore") AND
QVIEW2."wlbCompletionYear" IS NOT NULL AND
QVIEW3."cmpNpdidCompany" IS NOT NULL AND
QVIEW3."cmpLongName" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW4."wlbNpdidWellbore") AND
(QVIEW4."wlbDrillingOperator" = QVIEW5."cmpLongName") AND
(QVIEW3."cmpNpdidCompany" = QVIEW5."cmpNpdidCompany") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW6."wlbNpdidWellbore") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW7."wlbNpdidWellbore") AND
QVIEW6."wlbCoreNumber" IS NOT NULL AND
(QVIEW6."wlbCoreNumber" = QVIEW8."wlbCoreNumber") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW8."wlbNpdidWellbore") AND
QVIEW8."wlbTotalCoreLength" IS NOT NULL AND
(QVIEW6."wlbCoreNumber" = QVIEW9."wlbCoreNumber") AND
(QVIEW9."wlbCoreIntervalUom" = '[m   ]') AND
(QVIEW1."wlbNpdidWellbore" = QVIEW9."wlbNpdidWellbore") AND
((QVIEW8."wlbTotalCoreLength" > 50) AND (QVIEW2."wlbCompletionYear" >= 2008))
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."wlbNpdidWellbore" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW6."wlbCoreNumber" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS VARCHAR(500)) AS "wellbore", 
   7 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(QVIEW3."cmpLongName" AS VARCHAR(500)) AS "lenghtM", 
   4 AS "companyQuestType", NULL AS "companyLang", CAST(QVIEW2."wlbCompletionYear" AS VARCHAR(500)) AS "company", 
   5 AS "yearQuestType", NULL AS "yearLang", CAST(QVIEW8."wlbTotalCoreLength" AS VARCHAR(500)) AS "year"
 FROM 
"npd_no_spatial_10"."wellbore_exploration_all" QVIEW1,
"npd_no_spatial_10"."wellbore_exploration_all" QVIEW2,
"npd_no_spatial_10"."company" QVIEW3,
"npd_no_spatial_10"."wellbore_development_all" QVIEW4,
"npd_no_spatial_10"."company" QVIEW5,
"npd_no_spatial_10"."wellbore_core" QVIEW6,
"npd_no_spatial_10"."wellbore_npdid_overview" QVIEW7,
"npd_no_spatial_10"."wellbore_core" QVIEW8,
"npd_no_spatial_10"."wellbore_core" QVIEW9
WHERE 
QVIEW1."wlbNpdidWellbore" IS NOT NULL AND
QVIEW1."wlbWellboreName" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW2."wlbNpdidWellbore") AND
QVIEW2."wlbCompletionYear" IS NOT NULL AND
QVIEW3."cmpNpdidCompany" IS NOT NULL AND
QVIEW3."cmpLongName" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW4."wlbNpdidWellbore") AND
(QVIEW4."wlbDrillingOperator" = QVIEW5."cmpLongName") AND
(QVIEW3."cmpNpdidCompany" = QVIEW5."cmpNpdidCompany") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW6."wlbNpdidWellbore") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW7."wlbNpdidWellbore") AND
QVIEW6."wlbCoreNumber" IS NOT NULL AND
(QVIEW6."wlbCoreNumber" = QVIEW8."wlbCoreNumber") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW8."wlbNpdidWellbore") AND
QVIEW8."wlbTotalCoreLength" IS NOT NULL AND
(QVIEW6."wlbCoreNumber" = QVIEW9."wlbCoreNumber") AND
(QVIEW9."wlbCoreIntervalUom" = '[m   ]') AND
(QVIEW1."wlbNpdidWellbore" = QVIEW9."wlbNpdidWellbore") AND
((QVIEW8."wlbTotalCoreLength" > 50) AND (QVIEW2."wlbCompletionYear" >= 2008))
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."wlbNpdidWellbore" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW6."wlbCoreNumber" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS VARCHAR(500)) AS "wellbore", 
   7 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(QVIEW3."cmpLongName" AS VARCHAR(500)) AS "lenghtM", 
   4 AS "companyQuestType", NULL AS "companyLang", CAST(QVIEW2."wlbCompletionYear" AS VARCHAR(500)) AS "company", 
   5 AS "yearQuestType", NULL AS "yearLang", CAST(QVIEW8."wlbTotalCoreLength" AS VARCHAR(500)) AS "year"
 FROM 
"npd_no_spatial_10"."wellbore_exploration_all" QVIEW1,
"npd_no_spatial_10"."wellbore_shallow_all" QVIEW2,
"npd_no_spatial_10"."company" QVIEW3,
"npd_no_spatial_10"."wellbore_exploration_all" QVIEW4,
"npd_no_spatial_10"."company" QVIEW5,
"npd_no_spatial_10"."wellbore_core" QVIEW6,
"npd_no_spatial_10"."wellbore_npdid_overview" QVIEW7,
"npd_no_spatial_10"."wellbore_core" QVIEW8,
"npd_no_spatial_10"."wellbore_core" QVIEW9
WHERE 
QVIEW1."wlbNpdidWellbore" IS NOT NULL AND
QVIEW1."wlbWellboreName" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW2."wlbNpdidWellbore") AND
QVIEW2."wlbCompletionYear" IS NOT NULL AND
QVIEW3."cmpNpdidCompany" IS NOT NULL AND
QVIEW3."cmpLongName" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW4."wlbNpdidWellbore") AND
(QVIEW4."wlbDrillingOperator" = QVIEW5."cmpLongName") AND
(QVIEW3."cmpNpdidCompany" = QVIEW5."cmpNpdidCompany") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW6."wlbNpdidWellbore") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW7."wlbNpdidWellbore") AND
QVIEW6."wlbCoreNumber" IS NOT NULL AND
(QVIEW6."wlbCoreNumber" = QVIEW8."wlbCoreNumber") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW8."wlbNpdidWellbore") AND
QVIEW8."wlbTotalCoreLength" IS NOT NULL AND
(QVIEW6."wlbCoreNumber" = QVIEW9."wlbCoreNumber") AND
(QVIEW9."wlbCoreIntervalUom" = '[m   ]') AND
(QVIEW1."wlbNpdidWellbore" = QVIEW9."wlbNpdidWellbore") AND
((QVIEW8."wlbTotalCoreLength" > 50) AND (QVIEW2."wlbCompletionYear" >= 2008))
UNION
SELECT 
   1 AS "wellboreQuestType", NULL AS "wellboreLang", CAST(('http://sws.ifi.uio.no/data/npd-v2/wellbore/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."wlbNpdidWellbore" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F') || '/core/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW6."wlbCoreNumber" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS VARCHAR(500)) AS "wellbore", 
   7 AS "lenghtMQuestType", NULL AS "lenghtMLang", CAST(QVIEW3."cmpLongName" AS VARCHAR(500)) AS "lenghtM", 
   4 AS "companyQuestType", NULL AS "companyLang", CAST(QVIEW2."wlbCompletionYear" AS VARCHAR(500)) AS "company", 
   5 AS "yearQuestType", NULL AS "yearLang", CAST(QVIEW8."wlbTotalCoreLength" AS VARCHAR(500)) AS "year"
 FROM 
"npd_no_spatial_10"."wellbore_exploration_all" QVIEW1,
"npd_no_spatial_10"."wellbore_shallow_all" QVIEW2,
"npd_no_spatial_10"."company" QVIEW3,
"npd_no_spatial_10"."wellbore_development_all" QVIEW4,
"npd_no_spatial_10"."company" QVIEW5,
"npd_no_spatial_10"."wellbore_core" QVIEW6,
"npd_no_spatial_10"."wellbore_npdid_overview" QVIEW7,
"npd_no_spatial_10"."wellbore_core" QVIEW8,
"npd_no_spatial_10"."wellbore_core" QVIEW9
WHERE 
QVIEW1."wlbNpdidWellbore" IS NOT NULL AND
QVIEW1."wlbWellboreName" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW2."wlbNpdidWellbore") AND
QVIEW2."wlbCompletionYear" IS NOT NULL AND
QVIEW3."cmpNpdidCompany" IS NOT NULL AND
QVIEW3."cmpLongName" IS NOT NULL AND
(QVIEW1."wlbNpdidWellbore" = QVIEW4."wlbNpdidWellbore") AND
(QVIEW4."wlbDrillingOperator" = QVIEW5."cmpLongName") AND
(QVIEW3."cmpNpdidCompany" = QVIEW5."cmpNpdidCompany") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW6."wlbNpdidWellbore") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW7."wlbNpdidWellbore") AND
QVIEW6."wlbCoreNumber" IS NOT NULL AND
(QVIEW6."wlbCoreNumber" = QVIEW8."wlbCoreNumber") AND
(QVIEW1."wlbNpdidWellbore" = QVIEW8."wlbNpdidWellbore") AND
QVIEW8."wlbTotalCoreLength" IS NOT NULL AND
(QVIEW6."wlbCoreNumber" = QVIEW9."wlbCoreNumber") AND
(QVIEW9."wlbCoreIntervalUom" = '[m   ]') AND
(QVIEW1."wlbNpdidWellbore" = QVIEW9."wlbNpdidWellbore") AND
((QVIEW8."wlbTotalCoreLength" > 50) AND (QVIEW2."wlbCompletionYear" >= 2008))
) SUB_QVIEW
ORDER BY SUB_QVIEW."wellbore"
