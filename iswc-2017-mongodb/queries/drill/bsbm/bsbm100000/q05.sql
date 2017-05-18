-- no result probably  wrong

-- SELECT  'http://www4.wiwiss.fu-berlin.de/bizer/bsbm/v01/instances/dataFromProducer/Product' || `id` AS `product`,
-- `productName` as `productLabel`
-- FROM
-- (
-- SELECT
-- `p1`.`productName` as `productName`,
-- `p1`.`_id` as `id`,
-- FLATTEN (`p1`.`features`) as `features1`,
-- FLATTEN (`p2`.`features`) as `features2`
-- FROM
--  `mongo`.`bsbm100000`.`products` as `p1`,b
-- `mongo`.`bsbm100000`.`products` as `p2`
-- WHERE
--  `p1`.`_id`<>5 AND
-- `p2`.`_id`=5
--  AND `p1`.`properties`['numeric1'] = `p2`.`properties`['numeric1'] AND `p1`.`properties`['numeric2'] = `p2`.`properties`['numeric2']
-- )t
-- WHERE `features1`['featureId'] = `features2`['featureId']
-- ORDER BY `productLabel`
-- LIMIT 5


