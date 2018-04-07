SELECT nr, -- rating1, rating2, rating3,
COALESCE(rating1, rating2, rating3) AS rating
FROM review  WHERE product < 1000; --WHERE rating1 IS NOT NULL OR rating2 IS NOT NULL OR Orating2 IS NOT NULL;