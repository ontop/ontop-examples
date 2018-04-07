SELECT "nr", -- rating1, rating2, rating3, rating4,
COALESCE("rating1", "rating2", "rating3", "rating4") AS "rating" FROM "review"  WHERE "product" < 1000;
