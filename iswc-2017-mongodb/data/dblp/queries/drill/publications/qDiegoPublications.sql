SELECT 'http://dblp.l3s.de/d2r/journals/' || `_id` AS x,
`title` AS title,
`year`
FROM (
  SELECT
    _id,
    title,
    FLATTEN(`authors`) AS `author`,
    `year`
  FROM mongo.`dblp_publications`.`publications`
) t
WHERE `author`['name'] = 'Diego Calvanese'
LIMIT 1000