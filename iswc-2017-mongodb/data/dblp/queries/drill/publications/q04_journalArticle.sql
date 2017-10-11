SELECT 'http://dblp.l3s.de/d2r/journals/' || `_id` AS x,
`title` AS y
FROM (
  SELECT
    _id,
    title
  FROM mongo.`dblp_publications`.`publications`
  WHERE `type`='article'
) t
LIMIT 50000
