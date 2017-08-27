
SELECT 'http://www4.wiwiss.fu-berlin.de/bizer/bsbm/v01/instances/dataFromProducer/Product' || `t`.`fawards`['id'] || `t`.`fawards`['award'] AS x, `fawards`['year']  AS y
FROM
(SELECT FLATTEN(`awards`) as `fawards`
FROM `mongo`.`awards_20170306`.`awards` as `awards`
) t
WHERE `fawards`['year'] > 1989 AND `fawards`['year'] < 2001