SELECT
'http://www4.wiwiss.fu-berlin.de/bizer/bsbm/v01/instances/dataFromProducer/Product' || _id AS product,
productName AS label
  FROM (
    SELECT
      _id,
      FLATTEN(`features`) AS feature_1,
      FLATTEN(`features`) AS feature_2,
      productName,
      properties
    FROM mongo.`bsbm10000`.`products`
    WHERE `type`['typeId']=162 AND properties['numeric1']=831
) t
WHERE t.feature_1.featureId=52 AND t.feature_2.featureId=55
