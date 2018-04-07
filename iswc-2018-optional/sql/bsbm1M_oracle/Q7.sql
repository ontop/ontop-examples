SELECT DISTINCT
        v4."nr", -- rating1, rating2, rating3,
        COALESCE("rating1", "rating2", "rating3", "rating4") AS "rating"
              FROM
                  (  SELECT v12."nr", "rating1", "rating2", "rating3" FROM
      (  SELECT v1."nr", "rating1", "rating2" FROM
		(SELECT "nr", "review"."rating1" FROM "review"  WHERE "product" < 1000) v1 LEFT JOIN
		(SELECT "nr", "review"."rating2" FROM "review") v2 ON  v1."nr" = v2."nr" ) v12
LEFT JOIN (SELECT "nr", "review"."rating3" FROM "review") v3 ON  v12."nr" = v3."nr") v123
LEFT JOIN (SELECT "nr", "review"."rating4" FROM "review") v4 ON  v123."nr" = v4."nr";
--LIMIT 1000
;