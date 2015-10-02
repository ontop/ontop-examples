SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."unique2Tab1" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."YX" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "y", 
   4 AS "zQuestType", NULL AS "zLang", CAST(QVIEW3."YT" AS VARCHAR(500)) AS "z"
 FROM 
"Tab1" QVIEW1,
(SELECT ("unique2Tab5" +1) as  yyy, "unique1Tab5" as yx  FROM "Tab5" WHERE "Tab5"."unique1Tab5" > 40 AND "Tab5"."unique1Tab5" <60) QVIEW2,
(SELECT ("unique2Tab5" +1) as  ttt, "unique1Tab5" as yt  FROM  "Tab5" where "Tab5"."unique1Tab5" >20 AND "Tab5"."unique1Tab5" <40) QVIEW3
WHERE 
(QVIEW1."twentyTab1" < 5) AND
QVIEW1."unique2Tab1" IS NOT NULL AND
(QVIEW1."unique2Tab1" = QVIEW2."YYY") AND
QVIEW2."YX" IS NOT NULL AND
(QVIEW1."unique2Tab1" = QVIEW3."TTT") AND
QVIEW3."YT" IS NOT NULL
UNION ALL
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."unique2Tab1" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."YX" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "y", 
   4 AS "zQuestType", NULL AS "zLang", CAST(QVIEW3."YW" AS VARCHAR(500)) AS "z"
 FROM 
"Tab1" QVIEW1,
(SELECT ("unique2Tab5" +1) as  yyy, "unique1Tab5" as yx  FROM "Tab5" WHERE "Tab5"."unique1Tab5" > 40 AND "Tab5"."unique1Tab5" <60) QVIEW2,
(SELECT ("unique2Tab5" +1) as  www, "unique1Tab5" as yw  FROM  "Tab5" where "Tab5"."unique1Tab5" > 40 AND "Tab5"."unique1Tab5" <60) QVIEW3
WHERE 
(QVIEW1."twentyTab1" < 5) AND
QVIEW1."unique2Tab1" IS NOT NULL AND
(QVIEW1."unique2Tab1" = QVIEW2."YYY") AND
QVIEW2."YX" IS NOT NULL AND
(QVIEW1."unique2Tab1" = QVIEW3."WWW") AND
QVIEW3."YW" IS NOT NULL
UNION ALL
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."unique2Tab1" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."YX" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "y", 
   4 AS "zQuestType", NULL AS "zLang", CAST(QVIEW3."unique1Tab5" AS VARCHAR(500)) AS "z"
 FROM 
"Tab1" QVIEW1,
(SELECT ("unique2Tab5" +1) as  yyy, "unique1Tab5" as yx  FROM "Tab5" WHERE "Tab5"."unique1Tab5" > 40 AND "Tab5"."unique1Tab5" <60) QVIEW2,
"Tab5" QVIEW3
WHERE 
(QVIEW1."twentyTab1" < 5) AND
QVIEW1."unique2Tab1" IS NOT NULL AND
(QVIEW1."unique2Tab1" = QVIEW2."YYY") AND
QVIEW2."YX" IS NOT NULL AND
(QVIEW1."unique2Tab1" = QVIEW3."unique2Tab5") AND
(QVIEW3."unique1Tab5" < 20) AND
QVIEW3."unique1Tab5" IS NOT NULL
UNION ALL
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."unique2Tab1" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."XY" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "y", 
   4 AS "zQuestType", NULL AS "zLang", CAST(QVIEW3."YT" AS VARCHAR(500)) AS "z"
 FROM 
"Tab1" QVIEW1,
(SELECT  ("unique2Tab5" +1) as  xxx, "unique1Tab5" as xy FROM "Tab5" WHERE "Tab5"."unique1Tab5" > 20 AND "Tab5"."unique1Tab5" <40) QVIEW2,
(SELECT ("unique2Tab5" +1) as  ttt, "unique1Tab5" as yt  FROM  "Tab5" where "Tab5"."unique1Tab5" >20 AND "Tab5"."unique1Tab5" <40) QVIEW3
WHERE 
(QVIEW1."twentyTab1" < 5) AND
QVIEW1."unique2Tab1" IS NOT NULL AND
(QVIEW1."unique2Tab1" = QVIEW2."XXX") AND
QVIEW2."XY" IS NOT NULL AND
(QVIEW1."unique2Tab1" = QVIEW3."TTT") AND
QVIEW3."YT" IS NOT NULL
UNION ALL
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."unique2Tab1" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."XY" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "y", 
   4 AS "zQuestType", NULL AS "zLang", CAST(QVIEW3."YW" AS VARCHAR(500)) AS "z"
 FROM 
"Tab1" QVIEW1,
(SELECT  ("unique2Tab5" +1) as  xxx, "unique1Tab5" as xy FROM "Tab5" WHERE "Tab5"."unique1Tab5" > 20 AND "Tab5"."unique1Tab5" <40) QVIEW2,
(SELECT ("unique2Tab5" +1) as  www, "unique1Tab5" as yw  FROM  "Tab5" where "Tab5"."unique1Tab5" > 40 AND "Tab5"."unique1Tab5" <60) QVIEW3
WHERE 
(QVIEW1."twentyTab1" < 5) AND
QVIEW1."unique2Tab1" IS NOT NULL AND
(QVIEW1."unique2Tab1" = QVIEW2."XXX") AND
QVIEW2."XY" IS NOT NULL AND
(QVIEW1."unique2Tab1" = QVIEW3."WWW") AND
QVIEW3."YW" IS NOT NULL
UNION ALL
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."unique2Tab1" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."XY" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "y", 
   4 AS "zQuestType", NULL AS "zLang", CAST(QVIEW3."unique1Tab5" AS VARCHAR(500)) AS "z"
 FROM 
"Tab1" QVIEW1,
(SELECT  ("unique2Tab5" +1) as  xxx, "unique1Tab5" as xy FROM "Tab5" WHERE "Tab5"."unique1Tab5" > 20 AND "Tab5"."unique1Tab5" <40) QVIEW2,
"Tab5" QVIEW3
WHERE 
(QVIEW1."twentyTab1" < 5) AND
QVIEW1."unique2Tab1" IS NOT NULL AND
(QVIEW1."unique2Tab1" = QVIEW2."XXX") AND
QVIEW2."XY" IS NOT NULL AND
(QVIEW1."unique2Tab1" = QVIEW3."unique2Tab5") AND
(QVIEW3."unique1Tab5" < 20) AND
QVIEW3."unique1Tab5" IS NOT NULL
UNION ALL
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."unique2Tab1" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."unique1Tab5" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "y", 
   4 AS "zQuestType", NULL AS "zLang", CAST(QVIEW3."YT" AS VARCHAR(500)) AS "z"
 FROM 
"Tab1" QVIEW1,
"Tab5" QVIEW2,
(SELECT ("unique2Tab5" +1) as  ttt, "unique1Tab5" as yt  FROM  "Tab5" where "Tab5"."unique1Tab5" >20 AND "Tab5"."unique1Tab5" <40) QVIEW3
WHERE 
(QVIEW1."twentyTab1" < 5) AND
QVIEW1."unique2Tab1" IS NOT NULL AND
(QVIEW1."unique2Tab1" = QVIEW2."unique2Tab5") AND
(QVIEW2."unique1Tab5" < 20) AND
QVIEW2."unique1Tab5" IS NOT NULL AND
(QVIEW1."unique2Tab1" = QVIEW3."TTT") AND
QVIEW3."YT" IS NOT NULL
UNION ALL
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."unique2Tab1" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."unique1Tab5" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "y", 
   4 AS "zQuestType", NULL AS "zLang", CAST(QVIEW3."YW" AS VARCHAR(500)) AS "z"
 FROM 
"Tab1" QVIEW1,
"Tab5" QVIEW2,
(SELECT ("unique2Tab5" +1) as  www, "unique1Tab5" as yw  FROM  "Tab5" where "Tab5"."unique1Tab5" > 40 AND "Tab5"."unique1Tab5" <60) QVIEW3
WHERE 
(QVIEW1."twentyTab1" < 5) AND
QVIEW1."unique2Tab1" IS NOT NULL AND
(QVIEW1."unique2Tab1" = QVIEW2."unique2Tab5") AND
(QVIEW2."unique1Tab5" < 20) AND
QVIEW2."unique1Tab5" IS NOT NULL AND
(QVIEW1."unique2Tab1" = QVIEW3."WWW") AND
QVIEW3."YW" IS NOT NULL
UNION ALL
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."unique2Tab1" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."unique1Tab5" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "y", 
   4 AS "zQuestType", NULL AS "zLang", CAST(QVIEW2."unique1Tab5" AS VARCHAR(500)) AS "z"
 FROM 
"Tab1" QVIEW1,
"Tab5" QVIEW2
WHERE 
(QVIEW1."twentyTab1" < 5) AND
QVIEW1."unique2Tab1" IS NOT NULL AND
(QVIEW1."unique2Tab1" = QVIEW2."unique2Tab5") AND
(QVIEW2."unique1Tab5" < 20) AND
QVIEW2."unique1Tab5" IS NOT NULL
UNION ALL
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."unique2Tab2" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."YX" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "y", 
   4 AS "zQuestType", NULL AS "zLang", CAST(QVIEW3."YT" AS VARCHAR(500)) AS "z"
 FROM 
"Tab2" QVIEW1,
(SELECT ("unique2Tab5" +1) as  yyy, "unique1Tab5" as yx  FROM "Tab5" WHERE "Tab5"."unique1Tab5" > 40 AND "Tab5"."unique1Tab5" <60) QVIEW2,
(SELECT ("unique2Tab5" +1) as  ttt, "unique1Tab5" as yt  FROM  "Tab5" where "Tab5"."unique1Tab5" >20 AND "Tab5"."unique1Tab5" <40) QVIEW3
WHERE 
(QVIEW1."twentyTab2" < 10) AND
QVIEW1."unique2Tab2" IS NOT NULL AND
(QVIEW1."unique2Tab2" = QVIEW2."YYY") AND
QVIEW2."YX" IS NOT NULL AND
(QVIEW1."unique2Tab2" = QVIEW3."TTT") AND
QVIEW3."YT" IS NOT NULL
UNION ALL
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."unique2Tab2" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."YX" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "y", 
   4 AS "zQuestType", NULL AS "zLang", CAST(QVIEW3."YW" AS VARCHAR(500)) AS "z"
 FROM 
"Tab2" QVIEW1,
(SELECT ("unique2Tab5" +1) as  yyy, "unique1Tab5" as yx  FROM "Tab5" WHERE "Tab5"."unique1Tab5" > 40 AND "Tab5"."unique1Tab5" <60) QVIEW2,
(SELECT ("unique2Tab5" +1) as  www, "unique1Tab5" as yw  FROM  "Tab5" where "Tab5"."unique1Tab5" > 40 AND "Tab5"."unique1Tab5" <60) QVIEW3
WHERE 
(QVIEW1."twentyTab2" < 10) AND
QVIEW1."unique2Tab2" IS NOT NULL AND
(QVIEW1."unique2Tab2" = QVIEW2."YYY") AND
QVIEW2."YX" IS NOT NULL AND
(QVIEW1."unique2Tab2" = QVIEW3."WWW") AND
QVIEW3."YW" IS NOT NULL
UNION ALL
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."unique2Tab2" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."YX" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "y", 
   4 AS "zQuestType", NULL AS "zLang", CAST(QVIEW3."unique1Tab5" AS VARCHAR(500)) AS "z"
 FROM 
"Tab2" QVIEW1,
(SELECT ("unique2Tab5" +1) as  yyy, "unique1Tab5" as yx  FROM "Tab5" WHERE "Tab5"."unique1Tab5" > 40 AND "Tab5"."unique1Tab5" <60) QVIEW2,
"Tab5" QVIEW3
WHERE 
(QVIEW1."twentyTab2" < 10) AND
QVIEW1."unique2Tab2" IS NOT NULL AND
(QVIEW1."unique2Tab2" = QVIEW2."YYY") AND
QVIEW2."YX" IS NOT NULL AND
(QVIEW1."unique2Tab2" = QVIEW3."unique2Tab5") AND
(QVIEW3."unique1Tab5" < 20) AND
QVIEW3."unique1Tab5" IS NOT NULL
UNION ALL
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."unique2Tab2" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."XY" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "y", 
   4 AS "zQuestType", NULL AS "zLang", CAST(QVIEW3."YT" AS VARCHAR(500)) AS "z"
 FROM 
"Tab2" QVIEW1,
(SELECT  ("unique2Tab5" +1) as  xxx, "unique1Tab5" as xy FROM "Tab5" WHERE "Tab5"."unique1Tab5" > 20 AND "Tab5"."unique1Tab5" <40) QVIEW2,
(SELECT ("unique2Tab5" +1) as  ttt, "unique1Tab5" as yt  FROM  "Tab5" where "Tab5"."unique1Tab5" >20 AND "Tab5"."unique1Tab5" <40) QVIEW3
WHERE 
(QVIEW1."twentyTab2" < 10) AND
QVIEW1."unique2Tab2" IS NOT NULL AND
(QVIEW1."unique2Tab2" = QVIEW2."XXX") AND
QVIEW2."XY" IS NOT NULL AND
(QVIEW1."unique2Tab2" = QVIEW3."TTT") AND
QVIEW3."YT" IS NOT NULL
UNION ALL
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."unique2Tab2" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."XY" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "y", 
   4 AS "zQuestType", NULL AS "zLang", CAST(QVIEW3."YW" AS VARCHAR(500)) AS "z"
 FROM 
"Tab2" QVIEW1,
(SELECT  ("unique2Tab5" +1) as  xxx, "unique1Tab5" as xy FROM "Tab5" WHERE "Tab5"."unique1Tab5" > 20 AND "Tab5"."unique1Tab5" <40) QVIEW2,
(SELECT ("unique2Tab5" +1) as  www, "unique1Tab5" as yw  FROM  "Tab5" where "Tab5"."unique1Tab5" > 40 AND "Tab5"."unique1Tab5" <60) QVIEW3
WHERE 
(QVIEW1."twentyTab2" < 10) AND
QVIEW1."unique2Tab2" IS NOT NULL AND
(QVIEW1."unique2Tab2" = QVIEW2."XXX") AND
QVIEW2."XY" IS NOT NULL AND
(QVIEW1."unique2Tab2" = QVIEW3."WWW") AND
QVIEW3."YW" IS NOT NULL
UNION ALL
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."unique2Tab2" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."XY" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "y", 
   4 AS "zQuestType", NULL AS "zLang", CAST(QVIEW3."unique1Tab5" AS VARCHAR(500)) AS "z"
 FROM 
"Tab2" QVIEW1,
(SELECT  ("unique2Tab5" +1) as  xxx, "unique1Tab5" as xy FROM "Tab5" WHERE "Tab5"."unique1Tab5" > 20 AND "Tab5"."unique1Tab5" <40) QVIEW2,
"Tab5" QVIEW3
WHERE 
(QVIEW1."twentyTab2" < 10) AND
QVIEW1."unique2Tab2" IS NOT NULL AND
(QVIEW1."unique2Tab2" = QVIEW2."XXX") AND
QVIEW2."XY" IS NOT NULL AND
(QVIEW1."unique2Tab2" = QVIEW3."unique2Tab5") AND
(QVIEW3."unique1Tab5" < 20) AND
QVIEW3."unique1Tab5" IS NOT NULL
UNION ALL
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."unique2Tab2" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."unique1Tab5" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "y", 
   4 AS "zQuestType", NULL AS "zLang", CAST(QVIEW3."YT" AS VARCHAR(500)) AS "z"
 FROM 
"Tab2" QVIEW1,
"Tab5" QVIEW2,
(SELECT ("unique2Tab5" +1) as  ttt, "unique1Tab5" as yt  FROM  "Tab5" where "Tab5"."unique1Tab5" >20 AND "Tab5"."unique1Tab5" <40) QVIEW3
WHERE 
(QVIEW1."twentyTab2" < 10) AND
QVIEW1."unique2Tab2" IS NOT NULL AND
(QVIEW1."unique2Tab2" = QVIEW2."unique2Tab5") AND
(QVIEW2."unique1Tab5" < 20) AND
QVIEW2."unique1Tab5" IS NOT NULL AND
(QVIEW1."unique2Tab2" = QVIEW3."TTT") AND
QVIEW3."YT" IS NOT NULL
UNION ALL
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."unique2Tab2" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."unique1Tab5" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "y", 
   4 AS "zQuestType", NULL AS "zLang", CAST(QVIEW3."YW" AS VARCHAR(500)) AS "z"
 FROM 
"Tab2" QVIEW1,
"Tab5" QVIEW2,
(SELECT ("unique2Tab5" +1) as  www, "unique1Tab5" as yw  FROM  "Tab5" where "Tab5"."unique1Tab5" > 40 AND "Tab5"."unique1Tab5" <60) QVIEW3
WHERE 
(QVIEW1."twentyTab2" < 10) AND
QVIEW1."unique2Tab2" IS NOT NULL AND
(QVIEW1."unique2Tab2" = QVIEW2."unique2Tab5") AND
(QVIEW2."unique1Tab5" < 20) AND
QVIEW2."unique1Tab5" IS NOT NULL AND
(QVIEW1."unique2Tab2" = QVIEW3."WWW") AND
QVIEW3."YW" IS NOT NULL
UNION ALL
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."unique2Tab2" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."unique1Tab5" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "y", 
   4 AS "zQuestType", NULL AS "zLang", CAST(QVIEW2."unique1Tab5" AS VARCHAR(500)) AS "z"
 FROM 
"Tab2" QVIEW1,
"Tab5" QVIEW2
WHERE 
(QVIEW1."twentyTab2" < 10) AND
QVIEW1."unique2Tab2" IS NOT NULL AND
(QVIEW1."unique2Tab2" = QVIEW2."unique2Tab5") AND
(QVIEW2."unique1Tab5" < 20) AND
QVIEW2."unique1Tab5" IS NOT NULL
UNION ALL
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."unique2Tab3" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."YX" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "y", 
   4 AS "zQuestType", NULL AS "zLang", CAST(QVIEW3."YT" AS VARCHAR(500)) AS "z"
 FROM 
"Tab3" QVIEW1,
(SELECT ("unique2Tab5" +1) as  yyy, "unique1Tab5" as yx  FROM "Tab5" WHERE "Tab5"."unique1Tab5" > 40 AND "Tab5"."unique1Tab5" <60) QVIEW2,
(SELECT ("unique2Tab5" +1) as  ttt, "unique1Tab5" as yt  FROM  "Tab5" where "Tab5"."unique1Tab5" >20 AND "Tab5"."unique1Tab5" <40) QVIEW3
WHERE 
(QVIEW1."twentyTab3" < 15) AND
QVIEW1."unique2Tab3" IS NOT NULL AND
(QVIEW1."unique2Tab3" = QVIEW2."YYY") AND
QVIEW2."YX" IS NOT NULL AND
(QVIEW1."unique2Tab3" = QVIEW3."TTT") AND
QVIEW3."YT" IS NOT NULL
UNION ALL
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."unique2Tab3" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."YX" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "y", 
   4 AS "zQuestType", NULL AS "zLang", CAST(QVIEW3."YW" AS VARCHAR(500)) AS "z"
 FROM 
"Tab3" QVIEW1,
(SELECT ("unique2Tab5" +1) as  yyy, "unique1Tab5" as yx  FROM "Tab5" WHERE "Tab5"."unique1Tab5" > 40 AND "Tab5"."unique1Tab5" <60) QVIEW2,
(SELECT ("unique2Tab5" +1) as  www, "unique1Tab5" as yw  FROM  "Tab5" where "Tab5"."unique1Tab5" > 40 AND "Tab5"."unique1Tab5" <60) QVIEW3
WHERE 
(QVIEW1."twentyTab3" < 15) AND
QVIEW1."unique2Tab3" IS NOT NULL AND
(QVIEW1."unique2Tab3" = QVIEW2."YYY") AND
QVIEW2."YX" IS NOT NULL AND
(QVIEW1."unique2Tab3" = QVIEW3."WWW") AND
QVIEW3."YW" IS NOT NULL
UNION ALL
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."unique2Tab3" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."YX" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "y", 
   4 AS "zQuestType", NULL AS "zLang", CAST(QVIEW3."unique1Tab5" AS VARCHAR(500)) AS "z"
 FROM 
"Tab3" QVIEW1,
(SELECT ("unique2Tab5" +1) as  yyy, "unique1Tab5" as yx  FROM "Tab5" WHERE "Tab5"."unique1Tab5" > 40 AND "Tab5"."unique1Tab5" <60) QVIEW2,
"Tab5" QVIEW3
WHERE 
(QVIEW1."twentyTab3" < 15) AND
QVIEW1."unique2Tab3" IS NOT NULL AND
(QVIEW1."unique2Tab3" = QVIEW2."YYY") AND
QVIEW2."YX" IS NOT NULL AND
(QVIEW1."unique2Tab3" = QVIEW3."unique2Tab5") AND
(QVIEW3."unique1Tab5" < 20) AND
QVIEW3."unique1Tab5" IS NOT NULL
UNION ALL
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."unique2Tab3" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."XY" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "y", 
   4 AS "zQuestType", NULL AS "zLang", CAST(QVIEW3."YT" AS VARCHAR(500)) AS "z"
 FROM 
"Tab3" QVIEW1,
(SELECT  ("unique2Tab5" +1) as  xxx, "unique1Tab5" as xy FROM "Tab5" WHERE "Tab5"."unique1Tab5" > 20 AND "Tab5"."unique1Tab5" <40) QVIEW2,
(SELECT ("unique2Tab5" +1) as  ttt, "unique1Tab5" as yt  FROM  "Tab5" where "Tab5"."unique1Tab5" >20 AND "Tab5"."unique1Tab5" <40) QVIEW3
WHERE 
(QVIEW1."twentyTab3" < 15) AND
QVIEW1."unique2Tab3" IS NOT NULL AND
(QVIEW1."unique2Tab3" = QVIEW2."XXX") AND
QVIEW2."XY" IS NOT NULL AND
(QVIEW1."unique2Tab3" = QVIEW3."TTT") AND
QVIEW3."YT" IS NOT NULL
UNION ALL
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."unique2Tab3" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."XY" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "y", 
   4 AS "zQuestType", NULL AS "zLang", CAST(QVIEW3."YW" AS VARCHAR(500)) AS "z"
 FROM 
"Tab3" QVIEW1,
(SELECT  ("unique2Tab5" +1) as  xxx, "unique1Tab5" as xy FROM "Tab5" WHERE "Tab5"."unique1Tab5" > 20 AND "Tab5"."unique1Tab5" <40) QVIEW2,
(SELECT ("unique2Tab5" +1) as  www, "unique1Tab5" as yw  FROM  "Tab5" where "Tab5"."unique1Tab5" > 40 AND "Tab5"."unique1Tab5" <60) QVIEW3
WHERE 
(QVIEW1."twentyTab3" < 15) AND
QVIEW1."unique2Tab3" IS NOT NULL AND
(QVIEW1."unique2Tab3" = QVIEW2."XXX") AND
QVIEW2."XY" IS NOT NULL AND
(QVIEW1."unique2Tab3" = QVIEW3."WWW") AND
QVIEW3."YW" IS NOT NULL
UNION ALL
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."unique2Tab3" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."XY" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "y", 
   4 AS "zQuestType", NULL AS "zLang", CAST(QVIEW3."unique1Tab5" AS VARCHAR(500)) AS "z"
 FROM 
"Tab3" QVIEW1,
(SELECT  ("unique2Tab5" +1) as  xxx, "unique1Tab5" as xy FROM "Tab5" WHERE "Tab5"."unique1Tab5" > 20 AND "Tab5"."unique1Tab5" <40) QVIEW2,
"Tab5" QVIEW3
WHERE 
(QVIEW1."twentyTab3" < 15) AND
QVIEW1."unique2Tab3" IS NOT NULL AND
(QVIEW1."unique2Tab3" = QVIEW2."XXX") AND
QVIEW2."XY" IS NOT NULL AND
(QVIEW1."unique2Tab3" = QVIEW3."unique2Tab5") AND
(QVIEW3."unique1Tab5" < 20) AND
QVIEW3."unique1Tab5" IS NOT NULL
UNION ALL
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."unique2Tab3" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."unique1Tab5" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "y", 
   4 AS "zQuestType", NULL AS "zLang", CAST(QVIEW3."YT" AS VARCHAR(500)) AS "z"
 FROM 
"Tab3" QVIEW1,
"Tab5" QVIEW2,
(SELECT ("unique2Tab5" +1) as  ttt, "unique1Tab5" as yt  FROM  "Tab5" where "Tab5"."unique1Tab5" >20 AND "Tab5"."unique1Tab5" <40) QVIEW3
WHERE 
(QVIEW1."twentyTab3" < 15) AND
QVIEW1."unique2Tab3" IS NOT NULL AND
(QVIEW1."unique2Tab3" = QVIEW2."unique2Tab5") AND
(QVIEW2."unique1Tab5" < 20) AND
QVIEW2."unique1Tab5" IS NOT NULL AND
(QVIEW1."unique2Tab3" = QVIEW3."TTT") AND
QVIEW3."YT" IS NOT NULL
UNION ALL
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."unique2Tab3" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."unique1Tab5" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "y", 
   4 AS "zQuestType", NULL AS "zLang", CAST(QVIEW3."YW" AS VARCHAR(500)) AS "z"
 FROM 
"Tab3" QVIEW1,
"Tab5" QVIEW2,
(SELECT ("unique2Tab5" +1) as  www, "unique1Tab5" as yw  FROM  "Tab5" where "Tab5"."unique1Tab5" > 40 AND "Tab5"."unique1Tab5" <60) QVIEW3
WHERE 
(QVIEW1."twentyTab3" < 15) AND
QVIEW1."unique2Tab3" IS NOT NULL AND
(QVIEW1."unique2Tab3" = QVIEW2."unique2Tab5") AND
(QVIEW2."unique1Tab5" < 20) AND
QVIEW2."unique1Tab5" IS NOT NULL AND
(QVIEW1."unique2Tab3" = QVIEW3."WWW") AND
QVIEW3."YW" IS NOT NULL
UNION ALL
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."unique2Tab3" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."unique1Tab5" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "y", 
   4 AS "zQuestType", NULL AS "zLang", CAST(QVIEW2."unique1Tab5" AS VARCHAR(500)) AS "z"
 FROM 
"Tab3" QVIEW1,
"Tab5" QVIEW2
WHERE 
(QVIEW1."twentyTab3" < 15) AND
QVIEW1."unique2Tab3" IS NOT NULL AND
(QVIEW1."unique2Tab3" = QVIEW2."unique2Tab5") AND
(QVIEW2."unique1Tab5" < 20) AND
QVIEW2."unique1Tab5" IS NOT NULL
UNION ALL
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."unique2Tab4" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."YX" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "y", 
   4 AS "zQuestType", NULL AS "zLang", CAST(QVIEW3."YT" AS VARCHAR(500)) AS "z"
 FROM 
"Tab4" QVIEW1,
(SELECT ("unique2Tab5" +1) as  yyy, "unique1Tab5" as yx  FROM "Tab5" WHERE "Tab5"."unique1Tab5" > 40 AND "Tab5"."unique1Tab5" <60) QVIEW2,
(SELECT ("unique2Tab5" +1) as  ttt, "unique1Tab5" as yt  FROM  "Tab5" where "Tab5"."unique1Tab5" >20 AND "Tab5"."unique1Tab5" <40) QVIEW3
WHERE 
(QVIEW1."twentyTab4" < 20) AND
QVIEW1."unique2Tab4" IS NOT NULL AND
(QVIEW1."unique2Tab4" = QVIEW2."YYY") AND
QVIEW2."YX" IS NOT NULL AND
(QVIEW1."unique2Tab4" = QVIEW3."TTT") AND
QVIEW3."YT" IS NOT NULL
UNION ALL
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."unique2Tab4" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."YX" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "y", 
   4 AS "zQuestType", NULL AS "zLang", CAST(QVIEW3."YW" AS VARCHAR(500)) AS "z"
 FROM 
"Tab4" QVIEW1,
(SELECT ("unique2Tab5" +1) as  yyy, "unique1Tab5" as yx  FROM "Tab5" WHERE "Tab5"."unique1Tab5" > 40 AND "Tab5"."unique1Tab5" <60) QVIEW2,
(SELECT ("unique2Tab5" +1) as  www, "unique1Tab5" as yw  FROM  "Tab5" where "Tab5"."unique1Tab5" > 40 AND "Tab5"."unique1Tab5" <60) QVIEW3
WHERE 
(QVIEW1."twentyTab4" < 20) AND
QVIEW1."unique2Tab4" IS NOT NULL AND
(QVIEW1."unique2Tab4" = QVIEW2."YYY") AND
QVIEW2."YX" IS NOT NULL AND
(QVIEW1."unique2Tab4" = QVIEW3."WWW") AND
QVIEW3."YW" IS NOT NULL
UNION ALL
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."unique2Tab4" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."YX" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "y", 
   4 AS "zQuestType", NULL AS "zLang", CAST(QVIEW3."unique1Tab5" AS VARCHAR(500)) AS "z"
 FROM 
"Tab4" QVIEW1,
(SELECT ("unique2Tab5" +1) as  yyy, "unique1Tab5" as yx  FROM "Tab5" WHERE "Tab5"."unique1Tab5" > 40 AND "Tab5"."unique1Tab5" <60) QVIEW2,
"Tab5" QVIEW3
WHERE 
(QVIEW1."twentyTab4" < 20) AND
QVIEW1."unique2Tab4" IS NOT NULL AND
(QVIEW1."unique2Tab4" = QVIEW2."YYY") AND
QVIEW2."YX" IS NOT NULL AND
(QVIEW1."unique2Tab4" = QVIEW3."unique2Tab5") AND
(QVIEW3."unique1Tab5" < 20) AND
QVIEW3."unique1Tab5" IS NOT NULL
UNION ALL
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."unique2Tab4" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."XY" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "y", 
   4 AS "zQuestType", NULL AS "zLang", CAST(QVIEW3."YT" AS VARCHAR(500)) AS "z"
 FROM 
"Tab4" QVIEW1,
(SELECT  ("unique2Tab5" +1) as  xxx, "unique1Tab5" as xy FROM "Tab5" WHERE "Tab5"."unique1Tab5" > 20 AND "Tab5"."unique1Tab5" <40) QVIEW2,
(SELECT ("unique2Tab5" +1) as  ttt, "unique1Tab5" as yt  FROM  "Tab5" where "Tab5"."unique1Tab5" >20 AND "Tab5"."unique1Tab5" <40) QVIEW3
WHERE 
(QVIEW1."twentyTab4" < 20) AND
QVIEW1."unique2Tab4" IS NOT NULL AND
(QVIEW1."unique2Tab4" = QVIEW2."XXX") AND
QVIEW2."XY" IS NOT NULL AND
(QVIEW1."unique2Tab4" = QVIEW3."TTT") AND
QVIEW3."YT" IS NOT NULL
UNION ALL
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."unique2Tab4" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."XY" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "y", 
   4 AS "zQuestType", NULL AS "zLang", CAST(QVIEW3."YW" AS VARCHAR(500)) AS "z"
 FROM 
"Tab4" QVIEW1,
(SELECT  ("unique2Tab5" +1) as  xxx, "unique1Tab5" as xy FROM "Tab5" WHERE "Tab5"."unique1Tab5" > 20 AND "Tab5"."unique1Tab5" <40) QVIEW2,
(SELECT ("unique2Tab5" +1) as  www, "unique1Tab5" as yw  FROM  "Tab5" where "Tab5"."unique1Tab5" > 40 AND "Tab5"."unique1Tab5" <60) QVIEW3
WHERE 
(QVIEW1."twentyTab4" < 20) AND
QVIEW1."unique2Tab4" IS NOT NULL AND
(QVIEW1."unique2Tab4" = QVIEW2."XXX") AND
QVIEW2."XY" IS NOT NULL AND
(QVIEW1."unique2Tab4" = QVIEW3."WWW") AND
QVIEW3."YW" IS NOT NULL
UNION ALL
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."unique2Tab4" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."XY" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "y", 
   4 AS "zQuestType", NULL AS "zLang", CAST(QVIEW3."unique1Tab5" AS VARCHAR(500)) AS "z"
 FROM 
"Tab4" QVIEW1,
(SELECT  ("unique2Tab5" +1) as  xxx, "unique1Tab5" as xy FROM "Tab5" WHERE "Tab5"."unique1Tab5" > 20 AND "Tab5"."unique1Tab5" <40) QVIEW2,
"Tab5" QVIEW3
WHERE 
(QVIEW1."twentyTab4" < 20) AND
QVIEW1."unique2Tab4" IS NOT NULL AND
(QVIEW1."unique2Tab4" = QVIEW2."XXX") AND
QVIEW2."XY" IS NOT NULL AND
(QVIEW1."unique2Tab4" = QVIEW3."unique2Tab5") AND
(QVIEW3."unique1Tab5" < 20) AND
QVIEW3."unique1Tab5" IS NOT NULL
UNION ALL
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."unique2Tab4" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."unique1Tab5" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "y", 
   4 AS "zQuestType", NULL AS "zLang", CAST(QVIEW3."YT" AS VARCHAR(500)) AS "z"
 FROM 
"Tab4" QVIEW1,
"Tab5" QVIEW2,
(SELECT ("unique2Tab5" +1) as  ttt, "unique1Tab5" as yt  FROM  "Tab5" where "Tab5"."unique1Tab5" >20 AND "Tab5"."unique1Tab5" <40) QVIEW3
WHERE 
(QVIEW1."twentyTab4" < 20) AND
QVIEW1."unique2Tab4" IS NOT NULL AND
(QVIEW1."unique2Tab4" = QVIEW2."unique2Tab5") AND
(QVIEW2."unique1Tab5" < 20) AND
QVIEW2."unique1Tab5" IS NOT NULL AND
(QVIEW1."unique2Tab4" = QVIEW3."TTT") AND
QVIEW3."YT" IS NOT NULL
UNION ALL
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."unique2Tab4" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."unique1Tab5" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "y", 
   4 AS "zQuestType", NULL AS "zLang", CAST(QVIEW3."YW" AS VARCHAR(500)) AS "z"
 FROM 
"Tab4" QVIEW1,
"Tab5" QVIEW2,
(SELECT ("unique2Tab5" +1) as  www, "unique1Tab5" as yw  FROM  "Tab5" where "Tab5"."unique1Tab5" > 40 AND "Tab5"."unique1Tab5" <60) QVIEW3
WHERE 
(QVIEW1."twentyTab4" < 20) AND
QVIEW1."unique2Tab4" IS NOT NULL AND
(QVIEW1."unique2Tab4" = QVIEW2."unique2Tab5") AND
(QVIEW2."unique1Tab5" < 20) AND
QVIEW2."unique1Tab5" IS NOT NULL AND
(QVIEW1."unique2Tab4" = QVIEW3."WWW") AND
QVIEW3."YW" IS NOT NULL
UNION ALL
SELECT 
   1 AS "xQuestType", NULL AS "xLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW1."unique2Tab4" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "x", 
   1 AS "yQuestType", NULL AS "yLang", ('http://www.example.org/A/' || REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CAST(QVIEW2."unique1Tab5" AS VARCHAR(500)),' ', '%20'),'!', '%21'),'@', '%40'),'#', '%23'),'$', '%24'),'&', '%26'),'*', '%42'), '(', '%28'), ')', '%29'), '[', '%5B'), ']', '%5D'), ',', '%2C'), ';', '%3B'), ':', '%3A'), '?', '%3F'), '=', '%3D'), '+', '%2B'), '''', '%22'), '/', '%2F')) AS "y", 
   4 AS "zQuestType", NULL AS "zLang", CAST(QVIEW2."unique1Tab5" AS VARCHAR(500)) AS "z"
 FROM 
"Tab4" QVIEW1,
"Tab5" QVIEW2
WHERE 
(QVIEW1."twentyTab4" < 20) AND
QVIEW1."unique2Tab4" IS NOT NULL AND
(QVIEW1."unique2Tab4" = QVIEW2."unique2Tab5") AND
(QVIEW2."unique1Tab5" < 20) AND
QVIEW2."unique1Tab5" IS NOT NULL;
