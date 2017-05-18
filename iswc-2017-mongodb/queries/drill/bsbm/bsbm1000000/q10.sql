SELECT  'http://www4.wiwiss.fu-berlin.de/bizer/bsbm/v01/instances/dataFromVendor/Offer' || `offers`['offerId'] AS `offer`,
`offers`['price'] as `price`
FROM
(
SELECT
FLATTEN (`products`.`offers`) as `offers`
FROM
 `mongo`.`bsbm1000000`.`products` as `products`
WHERE
`_id` = 1985
)t
WHERE `offers`['deliveryDays'] < 5
AND `offers`['timeSpan']['to'] > '2008-03-05T00:00:00Z'
AND `offers`['vendor']['country'] = 'RU'
ORDER BY `price`
LIMIT 10
