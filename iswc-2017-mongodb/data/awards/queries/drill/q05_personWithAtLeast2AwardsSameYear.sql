
SELECT `firstName`, `lastName`, `fawards1`['award'] as `awName1` , `fawards2`['award'] as `awName2` , `fawards1`['year'] as y
FROM
(SELECT
`awards`.`name`['first'] as `firstName`,
`awards`.`name`['last'] as `lastName`,
FLATTEN(`awards`) as `fawards1`,
FLATTEN(`awards`) as `fawards2`
FROM `mongo`.`awards_20170306`.`awards` as `awards`
) t
WHERE `fawards1`['id'] <> `fawards2`['id'] AND `fawards1`['year'] =  `fawards2`['year']