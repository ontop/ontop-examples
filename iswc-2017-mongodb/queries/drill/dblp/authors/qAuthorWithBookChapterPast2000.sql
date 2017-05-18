-- ans1(paper,year,name)
-- CONSTRUCT [paper, year, name] [paper/URI("http://dblp.l3s.de/d2r/collections/{}",pub_dblp_keym13), year/http://www.w3.org/2001/XMLSchema#integer(pub_yearf9m6), name/http://www.w3.org/2001/XMLSchema#string(namef0)]
--    FILTER AND(AND(GT(http://www.w3.org/2001/XMLSchema#integer(pub_yearf9m6),http://www.w3.org/2001/XMLSchema#integer(2000)),IS_NOT_NULL(pub_dblp_keym13)),IS_NOT_NULL(pub_yearf9m6))
--       STRICT-FLATTEN publications_incollection -> flat-authors-publications_incollection(publications_incollection_idxm6,pub_dblp_keym13,pub_titlef15m6,pub_yearf9m6,pub_pagesf8m6,pub_urlf17m6,pub_proceedingsf10m6,pub_booktitlef11m6)
--          FILTER IS_NOT_NULL(namef0)
--             EXTENSIONAL authors(_idm16,namef0,homepage,publications_article,publications_inproceedings,publications_incollection)


SELECT
 'http://dblp.l3s.de/d2r/collections/' || `a`.`incollection`['dblp_key'] AS paper, `a`.`incollection`['year'] as `year`, `a`.`name` as `name`
FROM 
( SELECT `name`,
 FLATTEN(`authors`.`publications`.`incollection`) AS `incollection`
  FROM mongo.`dblp_authors`.`authors` AS `authors`) a
WHERE `a`.`incollection`['year'] > 2000 

LIMIT 3000