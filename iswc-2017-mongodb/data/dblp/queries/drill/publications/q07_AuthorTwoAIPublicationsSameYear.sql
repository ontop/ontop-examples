SELECT
`author_1`['name'] AS name,
title1,
title2,
`year`
FROM (
  SELECT
    FLATTEN(`publications_1`.`authors`) AS `author_1`,
    FLATTEN(`publications_2`.`authors`) AS `author_2`,
    `publications_1`.`title` AS title1,
    `publications_2`.`title` AS title2,
    `publications_1`.`year` AS `year`
  FROM mongo.`dblp_publications`.`publications` AS `publications_1`,
   mongo.`dblp_publications`.`publications` AS `publications_2`
   WHERE `publications_1`.`in`='Artif. Intell.' AND `publications_2`.`in`='Artif. Intell.' AND `publications_1`.`year`=`publications_2`.`year` AND `publications_1`.`_id` <> `publications_2`.`_id`
) t
WHERE `author_1`['_id']=`author_2`['_id']