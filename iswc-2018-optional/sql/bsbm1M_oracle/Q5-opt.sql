SELECT
  "nr",
  -- rating1, rating2,
  COALESCE("rating1", "rating2") AS "rating"
FROM "review"
WHERE "product" < 1000;