SELECT DISTINCT v2."nr", -- rating1, rating2,
COALESCE("rating1", "rating2") AS "rating"
FROM
(SELECT "nr", "review"."rating1" FROM "review" WHERE "product" < 1000) v1 LEFT JOIN
(SELECT "nr", "review"."rating2" FROM "review") v2 ON v1."nr" = v2."nr";
-- LIMIT 1000;