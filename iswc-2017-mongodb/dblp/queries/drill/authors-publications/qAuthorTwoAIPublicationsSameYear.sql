--in does not exist in the database

SELECT
  `publications_1`.`year` AS `year`,
  `publications_1`.`title` AS title1,
  `publications_2`.`title` AS title2,
  `a`.`name` AS `name`
FROM mongo.`dblp_ap`.`publications` AS `publications_1`,
 mongo.`dblp_ap`.`publications` AS `publications_2`,
(SELECT `authors`.`name` as `name`,
FLATTEN(`authors`.`publications`.`article`) AS `article_1`,
FLATTEN(`authors`.`publications`.`article`) AS `article_2`
FROM
mongo.`dblp_ap`.`authors` AS `authors`) a
WHERE `publications_1`.`type` = 'article'   AND  `publications_2`.`type` = 'article'  AND `publications_1`.`_id` <> `publications_2`.`_id` AND `publications_1`.`year`=`publications_2`.`year`
AND `publications_2`.`_id` = `a`.`article_2`['dblp_key'] AND `publications_2`.`_id` <> `a`.`article_1`['dblp_key']