
-- SELECT ?name ?paper ?year
-- WHERE { ?x a :Author ; foaf:name ?name .
--  ?paper a :BookChapter ; dc:creator ?x ;
--  dcterms:issued ?year .
--  FILTER (?year > 2000)
-- } LIMIT 3000

SELECT
 'http://dblp.l3s.de/d2r/collections/' || `_id` AS paper, `year`, `a`.`name` as `name`
FROM mongo.`dblp_ap`.`publications` as `publications`,
( SELECT `name`,
 FLATTEN(`authors`.`publications`.`incollection`) AS `incollection`
  FROM mongo.`dblp_ap`.`authors` AS `authors`) a
WHERE `year` > 2000 AND `type` = 'incollection' AND `a`.`incollection`['dblp_key'] = `publications`.`_id`

LIMIT 3000