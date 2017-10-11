-- ans1(paper,title)
-- CONSTRUCT [paper, title] [paper/URI("http://dblp.l3s.de/d2r/journals/{}",pub_dblp_keym9), title/http://www.w3.org/2001/XMLSchema#string(pub_titlem9)]
--    FILTER AND(IS_NOT_NULL(pub_dblp_keym9),IS_NOT_NULL(pub_titlem9))
--       STRICT-FLATTEN publications_article -> flat-authors-publications_article(publications_article_idxm9,pub_dblp_keym9,pub_titlem9,pub_yearm9,pub_inm9,pub_pagesm9,pub_urlm9)
--          EXTENSIONAL authors(_idm9,name,homepage,publications_article,publications_inproceedings,publications_incollection)


SELECT 'http://dblp.l3s.de/d2r/journals/' || `articles`['dblp_key'] AS paper,
articles['title'] AS title
FROM (
  SELECT
    FLATTEN(`authors`.`publications`.`article`) AS `articles`
  FROM mongo.`dblp_authors`.`authors` as `authors`
) t
LIMIT 50000
