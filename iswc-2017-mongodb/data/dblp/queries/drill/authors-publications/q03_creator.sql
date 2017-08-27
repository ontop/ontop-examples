SELECT `paper`, 'http://dblp.l3s.de/d2r/authors/' || `aid` AS creator
 FROM (
 SELECT 'http://dblp.l3s.de/d2r/journals/' || `articles`['dblp_key'] AS paper,
  _id AS aid
FROM (
  SELECT
    _id,
    FLATTEN(`authors`.`publications`.`article`) AS `articles`
  FROM mongo.`dblp_ap`.`authors`
) t1
UNION
SELECT 'http://dblp.l3s.de/d2r/inproceedings/' || `inproceedings`['dblp_key'] AS paper,
_id AS aid
FROM (
  SELECT
    _id,
    FLATTEN(`authors`.`publications`.`inproceedings`) AS `inproceedings`
  FROM mongo.`dblp_ap`.`authors`
) t2
UNION
SELECT 'http://dblp.l3s.de/d2r/collections/' || `incollections`['dblp_key'] AS paper,
_id  AS aid
FROM (
  SELECT
    _id,
    FLATTEN(`authors`.`publications`.`incollection`) AS `incollections`
  FROM mongo.`dblp_ap`.`authors`
) t3
)t
LIMIT 1000