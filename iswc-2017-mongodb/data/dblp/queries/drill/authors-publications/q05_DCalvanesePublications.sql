--CONSTRUCT [year, title] [year/http://www.w3.org/2001/XMLSchema#integer(yearm12f0f1), title/http://www.w3.org/2001/XMLSchema#string(titlem1f2f3f4f5)]
--   UNION [yearm12f0f1, titlem1f2f3f4f5]
--      CONSTRUCT [yearm12f0f1, titlem1f2f3f4f5] []
--          FILTER AND(IS_NOT_NULL(_idm11),EQ(_idm11,_idm11f12))
--               STRICT-FLATTEN publications_article -> flat-authors-publications_article(publications_article_idxm6,_idm11f12)
--                     JOIN AND(AND(IS_NOT_NULL(yearm12f0f1),IS_NOT_NULL(titlem1f2f3f4f5)),AND(EQ(f6,"Diego Calvanese"),EQ(f7,"article")))
--                           EXTENSIONAL authors(_idm16,f6,homepage,publications_article,publications_inproceedings,publications_incollection)
--                               EXTENSIONAL publications(_idm11,f7,titlem1f2f3f4f5,yearm12f0f1,pagesm1,inm1,urlm1,proceedingsm1,booktitlem1)
--                       CONSTRUCT [yearm12f0f1, titlem1f2f3f4f5] []
--                           FILTER AND(IS_NOT_NULL(_idf4m11),EQ(_idf4m11,_idf4m11f13))
--                                STRICT-FLATTEN publications_inproceedingsf0 -> flat-authors-publications_inproceedings(publications_inproceedings_idxm6,_idf4m11f13)
--                                      JOIN AND(AND(IS_NOT_NULL(yearm12f0f1),IS_NOT_NULL(titlem1f2f3f4f5)),AND(EQ(f8,"Diego Calvanese"),EQ(f9,"inproceedings")))
--                                            EXTENSIONAL authors(_idm16,f8,homepagef4,publications_articlef3,publications_inproceedingsf0,publications_incollectionf2)
--                                                EXTENSIONAL publications(_idf4m11,f9,titlem1f2f3f4f5,yearm12f0f1,pagesf0m1,inf2m1,urlf10m1,proceedingsf6m1,booktitlef9m1)
--                                        CONSTRUCT [yearm12f0f1, titlem1f2f3f4f5] []
--                                            FILTER AND(IS_NOT_NULL(_idf14m11),EQ(_idf14m11,_idf14m11f14))
--                                                 STRICT-FLATTEN publications_incollectionf3 -> flat-authors-publications_incollection(publications_incollection_idxm6,_idf14m11f14)
--                                                       JOIN AND(AND(IS_NOT_NULL(yearm12f0f1),IS_NOT_NULL(titlem1f2f3f4f5)),AND(EQ(f10,"Diego Calvanese"),EQ(f11,"incollection")))
--                                                             EXTENSIONAL authors(_idm16,f10,homepagef5,publications_articlef4,publications_inproceedingsf1,publications_incollectionf3)
--                                                                 EXTENSIONAL publications(_idf14m11,f11,titlem1f2f3f4f5,yearm12f0f1,pagesf22m1,inf24m1,urlf32m1,proceedingsf28m1,booktitlef31m1)
--

WITH V1 AS
(
  SELECT FLATTEN(`authors`.`publications`.`article`) AS `art`
  FROM mongo.`dblp_ap`.`authors`
  WHERE `name` = 'Diego Calvanese'
),

V2 AS
(
  SELECT FLATTEN(`authors`.`publications`.`inproceedings`) AS `proc`
  FROM mongo.`dblp_ap`.`authors`
  WHERE `name` = 'Diego Calvanese'
),

V3 AS
(
  SELECT FLATTEN(`authors`.`publications`.`incollection`) AS `coll`
  FROM mongo.`dblp_ap`.`authors`
  WHERE `name` = 'Diego Calvanese'
)



SELECT '/http://www.w3.org/2001/XMLSchema#integer/' || `pubYear` AS y, 'title/http://www.w3.org/2001/XMLSchema#string' || `pubTitle` AS t
FROM (

  SELECT `pub`.`year` AS pubYear,  
  `pub`.`title` AS pubTitle 
  FROM mongo.`dblp_ap`.`publications` AS `pub` JOIN V1
  ON `pub`.`_id` = V1.art['dblp_key']
  
UNION
  
  SELECT `pub`.`year` AS pubYear,
  `pub`.`title` AS pubTitle
  FROM mongo.`dblp_ap`.`publications` AS `pub` JOIN V2
  ON `pub`.`_id` = V2.proc['dblp_key']

UNION
  
SELECT `pub`.`year` AS pubYear,  
  `pub`.`title` AS pubTitle
  FROM mongo.`dblp_ap`.`publications` AS `pub` JOIN V3
  ON `pub`.`_id` = V3.coll['dblp_key'] 

)
