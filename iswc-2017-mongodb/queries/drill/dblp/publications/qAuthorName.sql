SELECT 'http://dblp.l3s.de/d2r/authors/' || `author`['_id'] AS x,
`author`['name'] AS y
FROM (
  SELECT
    _id,
    FLATTEN(`authors`) AS `author`
  FROM mongo.`dblp_publications`.`publications`
) t
LIMIT 5000
