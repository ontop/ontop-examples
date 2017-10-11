
SELECT  'http://www4.wiwiss.fu-berlin.de/bizer/bsbm/v01/instances/dataFromProducer/Product' || _id AS productURI, '"http://www4.wiwiss.fu-berlin.de/bizer/bsbm/v01/instances/dataFromVendor/Offer' || `offers`['offerId'] AS `offer`,
 productName as productlabel,  `offers`['offerWebpage'] as offerURL, `offers`['deliveryDays'] as deliveryDays, `offers`['price'] as `price`, `offers`['vendor']['homepage'] as vendorhomepage, `offers`['vendor']['name'] as vendorname, `offers`['timeSpan']['to'] as validTo
FROM
(
SELECT
FLATTEN (`products`.`offers`) as `offers`,
_id as _id,
productName as productName
FROM
 `mongo`.`bsbm1000000`.`products` as `products`
)t
WHERE `offers`['offerId'] = 5300215

