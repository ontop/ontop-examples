WITH SnRCTE (
	SELECT (unique2Tab5 +1) as  yyy, unique1Tab5 as yx  FROM Tab5 where Tab5.unique1Tab5< 20
	UNION
	SELECT (unique2Tab5 +1) as  yyy, unique1Tab5 as yx  FROM Tab5 where Tab5.unique1Tab5> 20 AND Tab5.unique1Tab5 <40
	UNION
	SELECT (unique2Tab5 +1) as  yyy, unique1Tab5 as yx  FROM Tab5 where Tab5.unique1Tab5> 40 AND Tab5.unique1Tab5 <60
)


SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."unique2tab1" AS VARCHAR(10485760)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."unique1tab1" AS VARCHAR(10485760)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "y", 
   4 AS "zQuestType", NULL AS "zLang", CAST(QVIEW2."unique1tab1" AS VARCHAR(10485760)) AS "z"
 FROM 
Tab1 QVIEW1,
SnRCTE QVIEW2
WHERE 
(QVIEW1."twentytab1" < 5) AND
QVIEW1."unique2tab1" IS NOT NULL AND
(QVIEW1."unique2tab1" = QVIEW2."unique2tab1") AND
QVIEW2."unique1tab1" IS NOT NULL
UNION ALL
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."unique2tab2" AS VARCHAR(10485760)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."unique1tab1" AS VARCHAR(10485760)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "y", 
   4 AS "zQuestType", NULL AS "zLang", CAST(QVIEW2."unique1tab1" AS VARCHAR(10485760)) AS "z"
 FROM 
Tab2 QVIEW1,
SnRCTE QVIEW2
WHERE 
(QVIEW1."twentytab2" < 10) AND
QVIEW1."unique2tab2" IS NOT NULL AND
(QVIEW1."unique2tab2" = QVIEW2."unique2tab1") AND
QVIEW2."unique1tab1" IS NOT NULL
UNION ALL
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."unique2tab3" AS VARCHAR(10485760)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."unique1tab1" AS VARCHAR(10485760)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "y", 
   4 AS "zQuestType", NULL AS "zLang", CAST(QVIEW2."unique1tab1" AS VARCHAR(10485760)) AS "z"
 FROM 
Tab3 QVIEW1,
SnRCTE QVIEW2
WHERE 
(QVIEW1."twentytab3" < 15) AND
QVIEW1."unique2tab3" IS NOT NULL AND
(QVIEW1."unique2tab3" = QVIEW2."unique2tab1") AND
QVIEW2."unique1tab1" IS NOT NULL
UNION ALL
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."unique2tab4" AS VARCHAR(10485760)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."unique1tab1" AS VARCHAR(10485760)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "y", 
   4 AS "zQuestType", NULL AS "zLang", CAST(QVIEW2."unique1tab1" AS VARCHAR(10485760)) AS "z"
 FROM 
Tab4 QVIEW1,
SnRCTE QVIEW2
WHERE 
(QVIEW1."twentytab4" < 20) AND
QVIEW1."unique2tab4" IS NOT NULL AND
(QVIEW1."unique2tab4" = QVIEW2."unique2tab1") AND
QVIEW2."unique1tab1" IS NOT NULL