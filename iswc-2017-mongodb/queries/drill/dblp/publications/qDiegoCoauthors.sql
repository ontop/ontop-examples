
SELECT `t`.`coauthor`['name'] as `name`
FROM (
  SELECT
    FLATTEN(`authors`) AS `author`,
    FLATTEN(`authors`) AS `coauthor`
  FROM mongo.`dblp_publications`.`publications` as `publications`
  WHERE `type`= 'article'
) t
WHERE `t`.`author`['name'] = 'Diego Calvanese'  AND `t`.`author`['_id'] <> `t`.`coauthor`['_id']

