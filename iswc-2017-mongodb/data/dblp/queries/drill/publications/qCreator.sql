SELECT `paper`, 'http://dblp.l3s.de/d2r/authors/' || `aid` AS creator
 FROM (
 SELECT 'http://dblp.l3s.de/d2r/journals/' || `_id` AS paper,
`author`['_id']  AS aid
FROM (
  SELECT
    _id,
    FLATTEN(`authors`) AS `author`
  FROM mongo.`dblp_publications`.`publications`
  WHERE `type`='article'
) t1
UNION
SELECT 'http://dblp.l3s.de/d2r/inproceedings/' || `_id` AS paper,
`author`['_id']  AS aid
FROM (
  SELECT
    _id,
    FLATTEN(`authors`) AS `author`
  FROM mongo.`dblp_publications`.`publications`
  WHERE `type`='inproceedings'
) t2
UNION
SELECT 'http://dblp.l3s.de/d2r/collections/' || `_id` AS paper,
`author`['_id']  AS aid
FROM (
  SELECT
    _id,
    FLATTEN(`authors`) AS `author`
  FROM mongo.`dblp_publications`.`publications`
  WHERE `type`='incollection'
) t3
)t
LIMIT 1000