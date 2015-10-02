set statement_timeout to 1200000; -- 1000: 0ne second
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."unique2tab1" AS VARCHAR(10485760)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."yx" AS VARCHAR(10485760)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "y", 
   4 AS "zQuestType", NULL AS "zLang", CAST(QVIEW3."yt" AS VARCHAR(10485760)) AS "z"
 FROM 
Tab1 QVIEW1,
(SELECT (unique2Tab5 +1) as  yyy, unique1Tab5 as yx  FROM Tab5 where Tab5.unique1Tab5> 40 AND Tab5.unique1Tab5 <60) QVIEW2,
(SELECT (unique2Tab5 +1) as  ttt, unique1Tab5 as yt  FROM  Tab5 where Tab5.unique1Tab5 >20 AND Tab5.unique1Tab5 <40) QVIEW3
WHERE 
(QVIEW1."twentytab1" < 5) AND
QVIEW1."unique2tab1" IS NOT NULL AND
(QVIEW1."unique2tab1" = QVIEW2."yyy") AND
QVIEW2."yx" IS NOT NULL AND
(QVIEW1."unique2tab1" = QVIEW3."ttt") AND
QVIEW3."yt" IS NOT NULL
UNION ALL
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."unique2tab1" AS VARCHAR(10485760)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."yx" AS VARCHAR(10485760)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "y", 
   4 AS "zQuestType", NULL AS "zLang", CAST(QVIEW3."yw" AS VARCHAR(10485760)) AS "z"
 FROM 
Tab1 QVIEW1,
(SELECT (unique2Tab5 +1) as  yyy, unique1Tab5 as yx  FROM Tab5 where Tab5.unique1Tab5> 40 AND Tab5.unique1Tab5 <60) QVIEW2,
(SELECT (unique2Tab5 +1) as  www, unique1Tab5 as yw  FROM  Tab5 where Tab5.unique1Tab5 > 20 AND Tab5.unique1Tab5 <40) QVIEW3
WHERE 
(QVIEW1."twentytab1" < 5) AND
QVIEW1."unique2tab1" IS NOT NULL AND
(QVIEW1."unique2tab1" = QVIEW2."yyy") AND
QVIEW2."yx" IS NOT NULL AND
(QVIEW1."unique2tab1" = QVIEW3."www") AND
QVIEW3."yw" IS NOT NULL
UNION ALL
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."unique2tab1" AS VARCHAR(10485760)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."yx" AS VARCHAR(10485760)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "y", 
   4 AS "zQuestType", NULL AS "zLang", CAST(QVIEW3."unique1tab5" AS VARCHAR(10485760)) AS "z"
 FROM 
Tab1 QVIEW1,
(SELECT (unique2Tab5 +1) as  yyy, unique1Tab5 as yx  FROM Tab5 where Tab5.unique1Tab5> 40 AND Tab5.unique1Tab5 <60) QVIEW2,
Tab5 QVIEW3
WHERE 
(QVIEW1."twentytab1" < 5) AND
QVIEW1."unique2tab1" IS NOT NULL AND
(QVIEW1."unique2tab1" = QVIEW2."yyy") AND
QVIEW2."yx" IS NOT NULL AND
(QVIEW1."unique2tab1" = QVIEW3."unique2tab5") AND
(QVIEW3."unique1tab5" < 20) AND
QVIEW3."unique1tab5" IS NOT NULL
UNION ALL
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."unique2tab1" AS VARCHAR(10485760)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."xy" AS VARCHAR(10485760)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "y", 
   4 AS "zQuestType", NULL AS "zLang", CAST(QVIEW3."yt" AS VARCHAR(10485760)) AS "z"
 FROM 
Tab1 QVIEW1,
(SELECT  (unique2Tab5 +1) as  xxx, unique1Tab5 as xy FROM Tab5 where Tab5.unique1Tab5 > 20 AND Tab5.unique1Tab5 <40) QVIEW2,
(SELECT (unique2Tab5 +1) as  ttt, unique1Tab5 as yt  FROM  Tab5 where Tab5.unique1Tab5 >20 AND Tab5.unique1Tab5 <40) QVIEW3
WHERE 
(QVIEW1."twentytab1" < 5) AND
QVIEW1."unique2tab1" IS NOT NULL AND
(QVIEW1."unique2tab1" = QVIEW2."xxx") AND
QVIEW2."xy" IS NOT NULL AND
(QVIEW1."unique2tab1" = QVIEW3."ttt") AND
QVIEW3."yt" IS NOT NULL
UNION ALL
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."unique2tab1" AS VARCHAR(10485760)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."xy" AS VARCHAR(10485760)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "y", 
   4 AS "zQuestType", NULL AS "zLang", CAST(QVIEW3."yw" AS VARCHAR(10485760)) AS "z"
 FROM 
Tab1 QVIEW1,
(SELECT  (unique2Tab5 +1) as  xxx, unique1Tab5 as xy FROM Tab5 where Tab5.unique1Tab5 > 20 AND Tab5.unique1Tab5 <40) QVIEW2,
(SELECT (unique2Tab5 +1) as  www, unique1Tab5 as yw  FROM  Tab5 where Tab5.unique1Tab5 > 20 AND Tab5.unique1Tab5 <40) QVIEW3
WHERE 
(QVIEW1."twentytab1" < 5) AND
QVIEW1."unique2tab1" IS NOT NULL AND
(QVIEW1."unique2tab1" = QVIEW2."xxx") AND
QVIEW2."xy" IS NOT NULL AND
(QVIEW1."unique2tab1" = QVIEW3."www") AND
QVIEW3."yw" IS NOT NULL
UNION ALL
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."unique2tab1" AS VARCHAR(10485760)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."xy" AS VARCHAR(10485760)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "y", 
   4 AS "zQuestType", NULL AS "zLang", CAST(QVIEW3."unique1tab5" AS VARCHAR(10485760)) AS "z"
 FROM 
Tab1 QVIEW1,
(SELECT  (unique2Tab5 +1) as  xxx, unique1Tab5 as xy FROM Tab5 where Tab5.unique1Tab5 > 20 AND Tab5.unique1Tab5 <40) QVIEW2,
Tab5 QVIEW3
WHERE 
(QVIEW1."twentytab1" < 5) AND
QVIEW1."unique2tab1" IS NOT NULL AND
(QVIEW1."unique2tab1" = QVIEW2."xxx") AND
QVIEW2."xy" IS NOT NULL AND
(QVIEW1."unique2tab1" = QVIEW3."unique2tab5") AND
(QVIEW3."unique1tab5" < 20) AND
QVIEW3."unique1tab5" IS NOT NULL
UNION ALL
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."unique2tab1" AS VARCHAR(10485760)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."unique1tab5" AS VARCHAR(10485760)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "y", 
   4 AS "zQuestType", NULL AS "zLang", CAST(QVIEW3."yt" AS VARCHAR(10485760)) AS "z"
 FROM 
Tab1 QVIEW1,
Tab5 QVIEW2,
(SELECT (unique2Tab5 +1) as  ttt, unique1Tab5 as yt  FROM  Tab5 where Tab5.unique1Tab5 >20 AND Tab5.unique1Tab5 <40) QVIEW3
WHERE 
(QVIEW1."twentytab1" < 5) AND
QVIEW1."unique2tab1" IS NOT NULL AND
(QVIEW1."unique2tab1" = QVIEW2."unique2tab5") AND
(QVIEW2."unique1tab5" < 20) AND
QVIEW2."unique1tab5" IS NOT NULL AND
(QVIEW1."unique2tab1" = QVIEW3."ttt") AND
QVIEW3."yt" IS NOT NULL
UNION ALL
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."unique2tab1" AS VARCHAR(10485760)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."unique1tab5" AS VARCHAR(10485760)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "y", 
   4 AS "zQuestType", NULL AS "zLang", CAST(QVIEW3."yw" AS VARCHAR(10485760)) AS "z"
 FROM 
Tab1 QVIEW1,
Tab5 QVIEW2,
(SELECT (unique2Tab5 +1) as  www, unique1Tab5 as yw  FROM  Tab5 where Tab5.unique1Tab5 > 20 AND Tab5.unique1Tab5 <40) QVIEW3
WHERE 
(QVIEW1."twentytab1" < 5) AND
QVIEW1."unique2tab1" IS NOT NULL AND
(QVIEW1."unique2tab1" = QVIEW2."unique2tab5") AND
(QVIEW2."unique1tab5" < 20) AND
QVIEW2."unique1tab5" IS NOT NULL AND
(QVIEW1."unique2tab1" = QVIEW3."www") AND
QVIEW3."yw" IS NOT NULL
UNION ALL
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."unique2tab1" AS VARCHAR(10485760)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."unique1tab5" AS VARCHAR(10485760)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "y", 
   4 AS "zQuestType", NULL AS "zLang", CAST(QVIEW2."unique1tab5" AS VARCHAR(10485760)) AS "z"
 FROM 
Tab1 QVIEW1,
Tab5 QVIEW2
WHERE 
(QVIEW1."twentytab1" < 5) AND
QVIEW1."unique2tab1" IS NOT NULL AND
(QVIEW1."unique2tab1" = QVIEW2."unique2tab5") AND
(QVIEW2."unique1tab5" < 20) AND
QVIEW2."unique1tab5" IS NOT NULL
