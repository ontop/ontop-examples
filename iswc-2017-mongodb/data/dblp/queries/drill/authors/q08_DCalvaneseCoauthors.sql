-- ans1(name)
-- CONSTRUCT [name] [name/http://www.w3.org/2001/XMLSchema#string(namef1)]
--    FILTER AND(IS_NOT_NULL(pub_dblp_keym9),EQ(pub_dblp_keym9,pub_dblp_keym9f1))
--       STRICT-FLATTEN publications_articlef3 -> flat-authors-publications_article(publications_article_idxm6f24,pub_dblp_keym9f1,pub_titlem6f6,pub_yearm6f19,pub_inm6f23,pub_pagesm6f11,pub_urlm6f18)
--          STRICT-FLATTEN publications_article -> flat-authors-publications_article(publications_article_idxm6,pub_dblp_keym9,pub_titlem6,pub_yearm6,pub_inm6,pub_pagesm6,pub_urlm6)
--             JOIN AND(AND(NEQ(_idm16,_idm16f5),IS_NOT_NULL(namef1)),EQ(f0,"Diego Calvanese"))
--                EXTENSIONAL authors(_idm16f5,f0,homepage,publications_article,publications_inproceedings,publications_incollection)
--                EXTENSIONAL authors(_idm16,namef1,homepagef4,publications_articlef3,publications_inproceedingsf0,publications_incollectionf2)
--


  SELECT
    `c`.`name` as `name`
  FROM
  (SELECT `author`.`_id`, 
    FLATTEN(`author`.`publications`.`article`) AS `publications1`
    FROM 
    mongo.`dblp_authors`.`authors` as `author`
    WHERE `author`.`name` = 'Diego Calvanese'  ) a,  
    
    (
    SELECT `coauthor`.`_id`,
    `coauthor`.`name` as `name`,
     FLATTEN(`coauthor`.`publications`.`article`) AS `publications2`
    FROM  
    mongo.`dblp_authors`.`authors` as `coauthor`  ) c

  WHERE  `a`.`_id` <> `c`.`_id` AND `a`.`publications1`['dblp_key'] = `c`.`publications2`['dblp_key']



