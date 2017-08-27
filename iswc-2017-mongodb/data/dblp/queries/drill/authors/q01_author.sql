-- ans1(x)
-- CONSTRUCT [x] [x/URI("http://dblp.l3s.de/d2r/authors/{}",_idm16)]
--    EXTENSIONAL authors(_idm16,namem16,homepagem16,publications_articlem16,publications_inproceedingsm16,publications_incollectionm16)



SELECT 'http://dblp.l3s.de/d2r/authors/' || _id AS x
FROM mongo.`dblp_authors`.`authors`

LIMIT 5000