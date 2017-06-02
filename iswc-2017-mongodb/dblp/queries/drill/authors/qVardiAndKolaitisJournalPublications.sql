-- ans1(venue,year,title)
-- CONSTRUCT [venue, year, title] [venue/http://www.w3.org/2001/XMLSchema#string(pub_inm6), year/http://www.w3.org/2001/XMLSchema#integer(pub_yearm6), title/http://www.w3.org/2001/XMLSchema#string(pub_titlem6)]
--    FILTER AND(IS_NOT_NULL(pub_dblp_keym9),EQ(pub_dblp_keym9,pub_dblp_keym9f2))
--       STRICT-FLATTEN publications_articlef3 -> flat-authors-publications_article(publications_article_idxm6f24,pub_dblp_keym9f2,pub_titlem6f6,pub_yearm6f19,pub_inm6f23,pub_pagesm6f11,pub_urlm6f18)
--          FILTER AND(AND(IS_NOT_NULL(pub_titlem6),IS_NOT_NULL(pub_yearm6)),IS_NOT_NULL(pub_inm6))
--             STRICT-FLATTEN publications_article -> flat-authors-publications_article(publications_article_idxm6,pub_dblp_keym9,pub_titlem6,pub_yearm6,pub_inm6,pub_pagesm6,pub_urlm6)
--                JOIN AND(EQ(f0,"Moshe Y. Vardi"),EQ(f1,"Phokion G. Kolaitis"))
--                   EXTENSIONAL authors(_idm16,f0,homepage,publications_article,publications_inproceedings,publications_incollection)
--                   EXTENSIONAL authors(_idm16f5,f1,homepagef4,publications_articlef3,publications_inproceedingsf0,publications_incollectionf2)

  SELECT
  `a`.articles1['title'] as `title`,
  `a`.articles1['year'] as `year`,
  `a`.articles1['in'] as `venue`
  FROM 
  
  (SELECT `author1`.`_id`, 
    FLATTEN(`author1`.`publications`.`article`) AS articles1
    FROM 
    mongo.`dblp_authors`.`authors` as `author1`
    WHERE `author1`.`name` = 'Moshe Y. Vardi'  ) a,  
    
    (
    SELECT `author2`.`_id`, `author2`.`name` as `name`, FLATTEN(`author2`.`publications`.`article`) AS articles2
    FROM  
    mongo.`dblp_authors`.`authors` as `author2`
     WHERE `author2`.`name` = 'Phokion G. Kolaitis'  ) c

  WHERE `a`.articles1['dblp_key'] = `c`.articles2['dblp_key'] 



