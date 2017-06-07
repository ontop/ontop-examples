-- ans1(name)
-- CONSTRUCT [name] [name/http://www.w3.org/2001/XMLSchema#string(namem2)]
--    FILTER IS_NOT_NULL(namem2)
--       EXTENSIONAL authors(_idm16,namem2,homepagem2,publications_articlem2,publications_inproceedingsm2,publications_incollectionm2)


 SELECT
    `name`
  FROM mongo.`dblp_authors`.`authors`

LIMIT 5000