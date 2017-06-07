SELECT
  title,
  `year`,
  `venue`
FROM (
  SELECT
    FLATTEN(`publications`.`authors`) AS `author_1`,
    FLATTEN(`publications`.`authors`) AS `author_2`,
    `publications`.`title` AS title,
    `publications`.`year` AS `year`,
    `publications`.`in` AS `venue`
  FROM mongo.`dblp_publications`.`publications` AS `publications`
   WHERE
    `publications`.`type` = 'article'
) t
WHERE `author_1`['name']='Moshe Y. Vardi' AND `author_2`['name']='Phokion G. Kolaitis'