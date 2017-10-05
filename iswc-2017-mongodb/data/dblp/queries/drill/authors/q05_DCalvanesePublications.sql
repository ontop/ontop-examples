--CONSTRUCT [year, title] [year/http://www.w3.org/2001/XMLSchema#integer(pub_yearm12f0f1), title/http://www.w3.org/2001/XMLSchema#string(pub_titlem1f2f3f4f5)]
--   UNION [pub_yearm12f0f1, pub_titlem1f2f3f4f5]
--      CONSTRUCT [pub_yearm12f0f1, pub_titlem1f2f3f4f5] []
--          FILTER AND(AND(IS_NOT_NULL(pub_dblp_keym11),IS_NOT_NULL(pub_yearm12f0f1)),IS_NOT_NULL(pub_titlem1f2f3f4f5))
--               STRICT-FLATTEN publications_article -> flat-authors-publications_article(publications_article_idxm6,pub_dblp_keym11,pub_titlem1f2f3f4f5,pub_yearm12f0f1,pub_inm6,pub_pagesm6,pub_urlm6)
--                     FILTER EQ(f6,"Diego Calvanese")
--                           EXTENSIONAL authors(_idm16,f6,homepage,publications_article,publications_inproceedings,publications_incollection)
--                   CONSTRUCT [pub_yearm12f0f1, pub_titlem1f2f3f4f5] []
--                       FILTER AND(AND(IS_NOT_NULL(pub_dblp_keyf5m11),IS_NOT_NULL(pub_yearm12f0f1)),IS_NOT_NULL(pub_titlem1f2f3f4f5))
--                            STRICT-FLATTEN publications_inproceedingsf0 -> flat-authors-publications_inproceedings(publications_inproceedings_idxm6,pub_dblp_keyf5m11,pub_titlem1f2f3f4f5,pub_yearm12f0f1,pub_pagesf0m6,pub_urlf7m6,pub_proceedingsm6,pub_booktitlem6)
--                                  FILTER EQ(f7,"Diego Calvanese")
--                                        EXTENSIONAL authors(_idm16,f7,homepagef4,publications_articlef3,publications_inproceedingsf0,publications_incollectionf2)
--                                CONSTRUCT [pub_yearm12f0f1, pub_titlem1f2f3f4f5] []
--                                    FILTER AND(AND(IS_NOT_NULL(pub_dblp_keyf14m11),IS_NOT_NULL(pub_yearm12f0f1)),IS_NOT_NULL(pub_titlem1f2f3f4f5))
--                                         STRICT-FLATTEN publications_incollectionf3 -> flat-authors-publications_incollection(publications_incollection_idxm6,pub_dblp_keyf14m11,pub_titlem1f2f3f4f5,pub_yearm12f0f1,pub_pagesf8m6,pub_urlf17m6,pub_proceedingsf10m6,pub_booktitlef11m6)
--                                               FILTER EQ(f8,"Diego Calvanese")
--                                                     EXTENSIONAL authors(_idm16,f8,homepagef5,publications_articlef4,publications_inproceedingsf1,publications_incollectionf3)

SELECT '/http://www.w3.org/2001/XMLSchema#integer/' || pubYear AS y, 'title/http://www.w3.org/2001/XMLSchema#string' || pubTitle AS t
FROM (
 SELECT `pub`['title'] AS pubTitle, 
 `pub`['year'] AS pubYear 
FROM (
  SELECT
    FLATTEN(`aut`.`publications`.`article`) AS pub
    FROM mongo.`dblp_authors`.`authors` AS aut
    WHERE `aut`.`name` = 'Diego Calvanese'
 ) t1 
 UNION

 SELECT `pub`['title'] AS pubTitle, 
 `pub`['year'] AS pubYear 
FROM (
  SELECT
    FLATTEN(`aut`.`publications`.`inproceedings`) AS pub
    FROM mongo.`dblp_authors`.`authors` AS aut
    WHERE `aut`.name = 'Diego Calvanese'
 ) t2
UNION

 SELECT `pub`['title'] AS pubTitle, 
 `pub`['year'] AS pubYear 
FROM (
  SELECT
    FLATTEN(`aut`.`publications`.`incollection`) AS pub
    FROM mongo.`dblp_authors`.`authors` AS aut
    WHERE `aut`.name = 'Diego Calvanese'
) t3
) t
LIMIT 1000
