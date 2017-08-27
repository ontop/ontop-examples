
  SELECT
    `c`.`name` as `name`
  FROM 
  mongo.`dblp_ap`.`publications` as `publications`,
  
  (SELECT `author`.`_id`, 
    FLATTEN(`author`.`publications`.`article`) AS `publications1`
    FROM 
    mongo.`dblp_ap`.`authors` as `author`
    WHERE `author`.`name` = 'Diego Calvanese'  ) a,  
    
    (
    SELECT `coauthor`.`_id`, `coauthor`.`name` as `name`, FLATTEN(`coauthor`.`publications`.`article`) AS `publications2`
    FROM  
    mongo.`dblp_ap`.`authors` as `coauthor`  ) c

  WHERE `publications`.`type` = 'article' AND `a`.`publications1`['dblp_key'] = `publications`.`_id` AND  `a`.`_id` <> `c`.`_id` AND `a`.`publications1`['dblp_key'] = `c`.`publications2`['dblp_key']



