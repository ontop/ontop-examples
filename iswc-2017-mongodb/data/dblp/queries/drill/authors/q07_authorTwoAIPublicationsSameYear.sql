-- ans1(year,name,title1,title2)
-- CONSTRUCT [year, name, title1, title2] [year/http://www.w3.org/2001/XMLSchema#integer(pub_yearm6), title1/http://www.w3.org/2001/XMLSchema#string(pub_titlem6f6), title2/http://www.w3.org/2001/XMLSchema#string(pub_titlem6), name/http://www.w3.org/2001/XMLSchema#string(namef1)]
--    FILTER AND(AND(AND(AND(AND(AND(IS_NOT_NULL(pub_dblp_keym9),IS_NOT_NULL(pub_titlem6)),NEQ(pub_dblp_keym9,pub_dblp_keym9f4)),IS_NOT_NULL(pub_dblp_keym9f4)),IS_NOT_NULL(pub_yearm6)),IS_NOT_NULL(pub_titlem6f6)),EQ(pub_yearm6,pub_yearm6f0))
--       STRICT-FLATTEN publications_articlef3 -> flat-authors-publications_article(publications_article_idxm6,pub_dblp_keym9,pub_titlem6,pub_yearm6f0,"Artif. Intell.",pub_pagesm6,pub_urlm6)
--          STRICT-FLATTEN publications_articlef3 -> flat-authors-publications_article(publications_article_idxm6f24,pub_dblp_keym9f4,pub_titlem6f6,pub_yearm6,"Artif. Intell.",pub_pagesm6f11,pub_urlm6f18)
--             FILTER IS_NOT_NULL(namef1)
--                EXTENSIONAL authors(_idm16,namef1,homepagef4,publications_articlef3,publications_inproceedingsf0,publications_incollectionf2)

--no result

SELECT
  `a`.`article_1`['year'] AS `year`,
  `a`.`article_1`['title'] AS title1,
  `a`.`article_2`['title'] AS title2,
  `a`.`name` AS `name`
FROM
(SELECT `authors`.`name` as `name`,
FLATTEN(`authors`.`publications`.`article`) AS `article_1`,
FLATTEN(`authors`.`publications`.`article`) AS `article_2`
FROM
mongo.`dblp_authors`.`authors` AS `authors`) a
WHERE `a`.`article_1`['in'] = 'Artif. Intell.'   AND  `a`.`article_2`['in'] = 'Artif. Intell.'
AND `a`.`article_1`['year'] = `a`.`article_2`['year'] AND `a`.`article_2`['dblp_key']  <> `a`.`article_1`['dblp_key']