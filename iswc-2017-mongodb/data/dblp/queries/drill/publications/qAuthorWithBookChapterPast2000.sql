
-- SELECT ?name ?paper ?year
-- WHERE { ?x a :Author ; foaf:name ?name .
--  ?paper a :BookChapter ; dc:creator ?x ;
--  dcterms:issued ?year .
--  FILTER (?year > 2000)
-- } LIMIT 3000

SELECT  'http://dblp.l3s.de/d2r/collections/' || `_id` AS paper, `year`, `author`['name'] AS name
FROM (
  SELECT
    _id,
    FLATTEN(`authors`) AS `author`, `year`
  FROM mongo.`dblp_publications`.`publications`
  WHERE `year` > 2000 AND `type` = 'incollection'
) t
LIMIT 3000