
  SELECT
   title,
  `year`,
  `in`
  FROM 
  mongo.`dblp_ap`.`publications` as `publications`,
  
  (SELECT `author1`.`_id`, 
    FLATTEN(`author1`.`publications`.`article`) AS `publications1`
    FROM 
    mongo.`dblp_ap`.`authors` as `author1`
    WHERE `author1`.`name` = 'Moshe Y. Vardi'  ) a,  
    
    (
    SELECT `author2`.`_id`, `author2`.`name` as `name`, FLATTEN(`author2`.`publications`.`article`) AS `publications2`
    FROM  
    mongo.`dblp_ap`.`authors` as `author2`
     WHERE `author2`.`name` = 'Phokion G. Kolaitis'  ) c

  WHERE `publications`.`type` = 'article' AND `a`.`publications1`['dblp_key'] = `publications`.`_id` AND `a`.`publications1`['dblp_key'] = `c`.`publications2`['dblp_key']



