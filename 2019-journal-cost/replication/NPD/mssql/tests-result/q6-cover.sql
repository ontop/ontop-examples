SELECT * FROM
(
SELECT DISTINCT    
   qview1.wlbNpdidWellbore AS x, 
   qview4.cmpNpdidCompany AS y, 
    qview5.cmpLongName AS company, 
    CAST(qview6.lsuCoreLenght AS VARCHAR(400)) AS l
 FROM 
strat_litho_wellbore_core qview1,
wellbore_npdid_overview qview2,
wellbore_exploration_all qview3,
company qview4,
company qview5,
strat_litho_wellbore_core qview6
WHERE 
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview1.lsuNpdidLithoStrat IS NOT NULL AND
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
(qview3.wlbDrillingOperator = qview4.cmpLongName) AND
qview4.cmpNpdidCompany IS NOT NULL AND
(qview4.cmpNpdidCompany = qview5.cmpNpdidCompany) AND
qview5.cmpLongName IS NOT NULL AND
(qview1.lsuNpdidLithoStrat = qview6.lsuNpdidLithoStrat) AND
(qview1.wlbNpdidWellbore = qview6.wlbNpdidWellbore) AND
qview6.lsuCoreLenght IS NOT NULL
UNION
SELECT DISTINCT
   qview1.wlbNpdidWellbore AS x, 
   qview4.cmpNpdidCompany AS y, 
    qview5.cmpLongName AS company, 
    CAST(qview6.lsuCoreLenght AS VARCHAR(400)) AS l
 FROM 
strat_litho_wellbore_core qview1,
wellbore_npdid_overview qview2,
wellbore_development_all qview3,
company qview4,
company qview5,
strat_litho_wellbore_core qview6
WHERE 
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview1.lsuNpdidLithoStrat IS NOT NULL AND
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
(qview3.wlbDrillingOperator = qview4.cmpLongName) AND
qview4.cmpNpdidCompany IS NOT NULL AND
(qview4.cmpNpdidCompany = qview5.cmpNpdidCompany) AND
qview5.cmpLongName IS NOT NULL AND
(qview1.lsuNpdidLithoStrat = qview6.lsuNpdidLithoStrat) AND
(qview1.wlbNpdidWellbore = qview6.wlbNpdidWellbore) AND
qview6.lsuCoreLenght IS NOT NULL
UNION
SELECT DISTINCT    
   qview1.wlbNpdidWellbore AS x, 
   qview4.cmpNpdidCompany AS y, 
    qview5.cmpLongName AS company, 
    CAST(qview6.wlbTotalCoreLength AS VARCHAR(400)) AS l
 FROM 
wellbore_core qview1,
wellbore_npdid_overview qview2,
wellbore_exploration_all qview3,
company qview4,
company qview5,
wellbore_core qview6
WHERE 
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview1.wlbNpdidWellbore IS NOT NULL AND
qview1.wlbCoreNumeric IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
(qview3.wlbDrillingOperator = qview4.cmpLongName) AND
qview4.cmpNpdidCompany IS NOT NULL AND
(qview4.cmpNpdidCompany = qview5.cmpNpdidCompany) AND
qview5.cmpLongName IS NOT NULL AND
(qview1.wlbCoreNumeric = qview6.wlbCoreNumeric) AND
(qview1.wlbNpdidWellbore = qview6.wlbNpdidWellbore) AND
qview6.wlbTotalCoreLength IS NOT NULL
UNION
SELECT DISTINCT    
   qview1.wlbNpdidWellbore AS x, 
   qview4.cmpNpdidCompany AS y, 
   qview5.cmpLongName AS company, 
    CAST(qview6.wlbTotalCoreLength AS VARCHAR(400)) AS l
 FROM 
wellbore_core qview1,
wellbore_npdid_overview qview2,
wellbore_development_all qview3,
company qview4,
company qview5,
wellbore_core qview6
WHERE 
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview1.wlbNpdidWellbore IS NOT NULL AND
qview1.wlbCoreNumeric IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
(qview3.wlbDrillingOperator = qview4.cmpLongName) AND
qview4.cmpNpdidCompany IS NOT NULL AND
(qview4.cmpNpdidCompany = qview5.cmpNpdidCompany) AND
qview5.cmpLongName IS NOT NULL AND
(qview1.wlbCoreNumeric = qview6.wlbCoreNumeric) AND
(qview1.wlbNpdidWellbore = qview6.wlbNpdidWellbore) AND
qview6.wlbTotalCoreLength IS NOT NULL) f1,
( SELECT DISTINCT *
FROM (
SELECT DISTINCT 
   qview1.wlbNpdidWellbore AS x, 
   7 AS wellboreQuestType, NULL AS wellboreLang, qview1.wlbWellboreName AS wellbore, 
   4 AS yearQuestType, NULL AS yearLang, CAST(qview2.wlbCompletionYear AS VARCHAR(400)) AS year
 FROM 
wellbore_development_all qview1,
wellbore_exploration_all qview2
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
qview1.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbCompletionYear IS NOT NULL
UNION
SELECT DISTINCT 
   qview1.wlbNpdidWellbore AS x, 
   7 AS wellboreQuestType, NULL AS wellboreLang, qview1.wlbWellboreName AS wellbore, 
   4 AS yearQuestType, NULL AS yearLang, CAST(qview2.wlbCompletionYear AS VARCHAR(400)) AS year
 FROM 
wellbore_development_all qview1,
wellbore_shallow_all qview2
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
qview1.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbCompletionYear IS NOT NULL
UNION
SELECT DISTINCT 
   qview1.wlbNpdidWellbore AS x, 
   7 AS wellboreQuestType, NULL AS wellboreLang, qview1.wlbWellboreName AS wellbore, 
   4 AS yearQuestType, NULL AS yearLang, CAST(qview2.wlbCompletionYear AS VARCHAR(400)) AS year
 FROM 
wellbore_development_all qview1,
wellbore_development_all qview2
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
qview1.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbCompletionYear IS NOT NULL
UNION
SELECT DISTINCT 
   qview1.wlbNpdidWellbore AS x, 
   7 AS wellboreQuestType, NULL AS wellboreLang, qview1.wlbWellboreName AS wellbore, 
   4 AS yearQuestType, NULL AS yearLang, CAST(qview2.wlbCompletionYear AS VARCHAR(400)) AS year
 FROM 
wellbore_exploration_all qview1,
wellbore_exploration_all qview2
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
qview1.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbCompletionYear IS NOT NULL
UNION
SELECT DISTINCT 
   qview1.wlbNpdidWellbore AS x, 
   7 AS wellboreQuestType, NULL AS wellboreLang, qview1.wlbWellboreName AS wellbore, 
   4 AS yearQuestType, NULL AS yearLang, CAST(qview2.wlbCompletionYear AS VARCHAR(400)) AS year
 FROM 
wellbore_exploration_all qview1,
wellbore_shallow_all qview2
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
qview1.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbCompletionYear IS NOT NULL
UNION
SELECT DISTINCT 
   qview1.wlbNpdidWellbore AS x, 
   7 AS wellboreQuestType, NULL AS wellboreLang, qview1.wlbWellboreName AS wellbore, 
   4 AS yearQuestType, NULL AS yearLang, CAST(qview2.wlbCompletionYear AS VARCHAR(400)) AS year
 FROM 
wellbore_exploration_all qview1,
wellbore_development_all qview2
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
qview1.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbCompletionYear IS NOT NULL
UNION
SELECT DISTINCT 
   qview1.wlbNpdidWellbore AS x, 
   7 AS wellboreQuestType, NULL AS wellboreLang, qview1.wlbWellboreName AS wellbore, 
   4 AS yearQuestType, NULL AS yearLang, CAST(qview2.wlbCompletionYear AS VARCHAR(400)) AS year
 FROM 
wellbore_shallow_all qview1,
wellbore_exploration_all qview2
WHERE 
qview1.wlbWellboreName IS NOT NULL AND
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbCompletionYear IS NOT NULL
UNION
SELECT DISTINCT 
   qview1.wlbNpdidWellbore AS x, 
   7 AS wellboreQuestType, NULL AS wellboreLang, qview1.wlbWellboreName AS wellbore, 
   4 AS yearQuestType, NULL AS yearLang, CAST(qview1.wlbCompletionYear AS VARCHAR(400)) AS year
 FROM 
wellbore_shallow_all qview1
WHERE 
qview1.wlbWellboreName IS NOT NULL AND
qview1.wlbNpdidWellbore IS NOT NULL AND
qview1.wlbCompletionYear IS NOT NULL
UNION
SELECT DISTINCT 
   qview1.wlbNpdidWellbore AS x, 
   7 AS wellboreQuestType, NULL AS wellboreLang, qview1.wlbWellboreName AS wellbore, 
   4 AS yearQuestType, NULL AS yearLang, CAST(qview2.wlbCompletionYear AS VARCHAR(400)) AS year
 FROM 
wellbore_shallow_all qview1,
wellbore_development_all qview2
WHERE 
qview1.wlbWellboreName IS NOT NULL AND
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbCompletionYear IS NOT NULL
UNION
SELECT DISTINCT 
   qview1.wlbNpdidWellbore AS x, 
   7 AS wellboreQuestType, NULL AS wellboreLang, qview1.wlbWellboreName AS wellbore, 
   4 AS yearQuestType, NULL AS yearLang, CAST(qview2.wlbCompletionYear AS VARCHAR(400)) AS year
 FROM 
wellbore_npdid_overview qview1,
wellbore_exploration_all qview2
WHERE 
qview1.wlbWellboreName IS NOT NULL AND
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbCompletionYear IS NOT NULL
UNION
SELECT DISTINCT 
   qview1.wlbNpdidWellbore AS x, 
   7 AS wellboreQuestType, NULL AS wellboreLang, qview1.wlbWellboreName AS wellbore, 
   4 AS yearQuestType, NULL AS yearLang, CAST(qview2.wlbCompletionYear AS VARCHAR(400)) AS year
 FROM 
wellbore_npdid_overview qview1,
wellbore_shallow_all qview2
WHERE 
qview1.wlbWellboreName IS NOT NULL AND
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbCompletionYear IS NOT NULL
UNION
SELECT DISTINCT 
   qview1.wlbNpdidWellbore AS x, 
   7 AS wellboreQuestType, NULL AS wellboreLang, qview1.wlbWellboreName AS wellbore, 
   4 AS yearQuestType, NULL AS yearLang, CAST(qview2.wlbCompletionYear AS VARCHAR(400)) AS year
 FROM 
wellbore_npdid_overview qview1,
wellbore_development_all qview2
WHERE 
qview1.wlbWellboreName IS NOT NULL AND
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbCompletionYear IS NOT NULL
) SUB_QVIEW ) f2
WHERE f1.x = f2.x;
