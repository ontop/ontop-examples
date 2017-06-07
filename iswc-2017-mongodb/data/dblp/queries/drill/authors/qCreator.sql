-- ans1(paper,creator)
-- CONSTRUCT [creator, paper] [creator/URI("http://dblp.l3s.de/d2r/authors/{}",_idm6f0f1)]
--    UNION [_idm6f0f1, paper]
--       CONSTRUCT [_idm6f0f1, paper] [paper/URI("http://dblp.l3s.de/d2r/journals/{}",pub_dblp_keym6)]
--          FILTER IS_NOT_NULL(pub_dblp_keym6)
--             STRICT-FLATTEN publications_article -> flat-authors-publications_article(publications_article_idxm6,pub_dblp_keym6,pub_titlem6,pub_yearm6,pub_inm6,pub_pagesm6,pub_urlm6)
--                EXTENSIONAL authors(_idm6f0f1,name,homepage,publications_article,publications_inproceedings,publications_incollection)
--       CONSTRUCT [_idm6f0f1, paper] [paper/URI("http://dblp.l3s.de/d2r/inproceedings/{}",pub_dblp_keyf6m6)]
--          FILTER IS_NOT_NULL(pub_dblp_keyf6m6)
--             STRICT-FLATTEN publications_inproceedingsf0 -> flat-authors-publications_inproceedings(publications_inproceedings_idxm6,pub_dblp_keyf6m6,pub_titlef5m6,pub_yearf1m6,pub_pagesf0m6,pub_urlf7m6,pub_proceedingsm6,pub_booktitlem6)
--                EXTENSIONAL authors(_idm6f0f1,namef1,homepagef4,publications_articlef3,publications_inproceedingsf0,publications_incollectionf2)
--       CONSTRUCT [_idm6f0f1, paper] [paper/URI("http://dblp.l3s.de/d2r/collections/{}",pub_dblp_keyf16m6)]
--          FILTER IS_NOT_NULL(pub_dblp_keyf16m6)
--             STRICT-FLATTEN publications_incollectionf3 -> flat-authors-publications_incollection(publications_incollection_idxm6,pub_dblp_keyf16m6,pub_titlef15m6,pub_yearf9m6,pub_pagesf8m6,pub_urlf17m6,pub_proceedingsf10m6,pub_booktitlef11m6)
--                EXTENSIONAL authors(_idm6f0f1,namef2,homepagef5,publications_articlef4,publications_inproceedingsf1,publications_incollectionf3)


SELECT `paper`, 'http://dblp.l3s.de/d2r/authors/' || `aid` AS creator
 FROM (
 SELECT 'http://dblp.l3s.de/d2r/journals/' || `articles`['dblp_key'] AS paper,
  _id AS aid
FROM (
  SELECT
    _id,
    FLATTEN(`authors`.`publications`.`article`) AS `articles`
  FROM mongo.`dblp_authors`.`authors`
) t1
UNION
SELECT 'http://dblp.l3s.de/d2r/inproceedings/' || `inproceedings`['dblp_key'] AS paper,
_id AS aid
FROM (
  SELECT
    _id,
    FLATTEN(`authors`.`publications`.`inproceedings`) AS `inproceedings`
  FROM mongo.`dblp_authors`.`authors`
) t2
UNION
SELECT 'http://dblp.l3s.de/d2r/collections/' || `incollections`['dblp_key'] AS paper,
_id  AS aid
FROM (
  SELECT
    _id,
    FLATTEN(`authors`.`publications`.`incollection`) AS `incollections`
  FROM mongo.`dblp_authors`.`authors`
) t3
)t
LIMIT 1000