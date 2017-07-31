SELECT 'http://dblp.l3s.de/d2r/authors/' || _id AS x
FROM mongo.`dblp_ap`.`authors`

LIMIT 5000