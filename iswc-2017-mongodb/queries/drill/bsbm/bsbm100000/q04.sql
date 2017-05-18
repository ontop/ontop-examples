SELECT  'http://www4.wiwiss.fu-berlin.de/bizer/bsbm/v01/instances/dataFromProducer/Product' || `id` AS `product`,
`productName` as `productLabel`
FROM
(
SELECT
`t2`.`productName` as `productName`,
`t2`.`id` as `id`
FROM
(
SELECT
`products2`.`productName` as `productName`,
`products2`.`_id` as `id`,
FLATTEN (`products2`.`features`) as `featuresf3`,
FLATTEN (`products2`.`features`) as `featuresf4`
FROM
 `mongo`.`bsbm100000`.`products` as `products2`

WHERE
 `products2`.`properties`['numeric2'] > 50 AND `products2`.`type`['typeId'] = 162
 )t2
WHERE
(`t2`.`featuresf3`['featureId'] = 695  AND  `t2`.`featuresf4`['featureId'] = 52 )
UNION
SELECT
`t1`.`productName` as `productName`,
`t1`.`id` as `id`
FROM
 (
SELECT
`products1`.`productName` as `productName`,
`products1`.`_id` as `id`,
FLATTEN (`products1`.`features`) as `featuresf5`,
FLATTEN (`products1`.`features`) as `featuresf6`
FROM
 `mongo`.`bsbm100000`.`products` as `products1`

WHERE
 `products1`.`properties`['numeric1'] > 500 AND `products1`.`type`['typeId'] = 162

)t1
WHERE
(`t1`.`featuresf5`['featureId'] = 689  AND  `t1`.`featuresf6`['featureId'] = 52 )
)


ORDER BY `productLabel`
LIMIT 10
