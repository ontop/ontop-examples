-- PREFIX bsbm: <http://www4.wiwiss.fu-berlin.de/bizer/bsbm/v01/vocabulary/>
-- PREFIX bsbm-inst: <http://www4.wiwiss.fu-berlin.de/bizer/bsbm/v01/instances/>
-- PREFIX bsbm-inst-prod: <http://www4.wiwiss.fu-berlin.de/bizer/bsbm/v01/instances/dataFromProducer/>
-- PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
-- PREFIX dc: <http://purl.org/dc/elements/1.1/>
--
-- SELECT
-- ?productFeature ?producer ?propertyTextual1 ?propertyTextual2
-- ?propertyTextual3 ?propertyNumeric1 ?propertyNumeric2 ?propertyTextual5 ?propertyTextual4
-- ?propertyNumeric4
--
-- WHERE {
-- bsbm-inst-prod:Product5 rdfs:label ?label .
-- bsbm-inst-prod:Product5 rdfs:comment ?comment .
-- bsbm-inst-prod:Product5 bsbm:producer ?p .
-- ?p rdfs:label ?producer .
-- bsbm-inst-prod:Product5 dc:publisher ?p .
-- bsbm-inst-prod:Product5 bsbm:productFeature ?f .
-- ?f rdfs:label ?productFeature .
-- bsbm-inst-prod:Product5 bsbm:productPropertyTextual1 ?propertyTextual1 .
-- bsbm-inst-prod:Product5 bsbm:productPropertyTextual2 ?propertyTextual2 .
-- bsbm-inst-prod:Product5 bsbm:productPropertyTextual3 ?propertyTextual3 .
-- bsbm-inst-prod:Product5 bsbm:productPropertyNumeric1 ?propertyNumeric1 .
-- bsbm-inst-prod:Product5 bsbm:productPropertyNumeric2 ?propertyNumeric2 .
-- OPTIONAL { bsbm-inst-prod:Product5 bsbm:productPropertyTextual4 ?propertyTextual4 }
-- OPTIONAL { bsbm-inst-prod:Product5 bsbm:productPropertyTextual5 ?propertyTextual5 }
-- OPTIONAL { bsbm-inst-prod:Product5 bsbm:productPropertyNumeric4 ?propertyNumeric4 }
-- }


-- ans1(propertyNumeric2,propertyNumeric1,propertyNumeric4,producer,propertyTextual1,propertyTextual2,propertyTextual3,propertyTextual4,productFeature,propertyTextual5)
-- CONSTRUCT [propertyNumeric2, propertyNumeric1, propertyNumeric4, producer, propertyTextual1, propertyTextual2, propertyTextual3, propertyTextual4, productFeature, propertyTextual5] [propertyNumeric2/http://www.w3.org/2001/XMLSchema#integer(properties_numeric2), propertyNumeric1/http://www.w3.org/2001/XMLSchema#integer(properties_numeric1), propertyNumeric4/http://www.w3.org/2001/XMLSchema#integer(properties_numeric4m17), propertyTextual1/http://www.w3.org/2001/XMLSchema#string(properties_textual1), propertyTextual2/http://www.w3.org/2001/XMLSchema#string(properties_textual2), propertyTextual3/http://www.w3.org/2001/XMLSchema#string(properties_textual3), propertyTextual4/http://www.w3.org/2001/XMLSchema#string(properties_textual4m26), propertyTextual5/http://www.w3.org/2001/XMLSchema#string(properties_textual5m25), productFeature/http://www.w3.org/2001/XMLSchema#string(fea_descriptionm3), producer/http://www.w3.org/2001/XMLSchema#string(producer_name)]
--    FILTER AND(IS_NOT_NULL(fea_featureIdm3),IS_NOT_NULL(fea_descriptionm3))
--       STRICT-FLATTEN features -> flat-products-features(features_idxm3,fea_featureIdm3,fea_descriptionm3,fea_commentm3)
--          LJ
--             LJ
--                LJ
--                   FILTER AND(AND(AND(AND(AND(AND(AND(AND(AND(IS_NOT_NULL(productName),IS_NOT_NULL(commentf0)),IS_NOT_NULL(producer_producerId)),IS_NOT_NULL(producer_name)),IS_NOT_NULL(properties_textual1)),IS_NOT_NULL(properties_textual2)),IS_NOT_NULL(properties_textual3)),IS_NOT_NULL(properties_numeric1)),IS_NOT_NULL(properties_numeric2)),EQ(f2,"5"))
--                      EXTENSIONAL products(f2,producer_producerId,productName,type_typeId,properties_numeric1,properties_numeric2,properties_numeric3,properties_numeric4,properties_numeric5,properties_numeric6,properties_textual1,properties_textual2,properties_textual3,properties_textual4,properties_textual5,properties_textual6,commentf0,producer_name,producer_country,producer_homepage,type_label,features,offers,reviews)
--                   FILTER AND(IS_NOT_NULL(properties_textual4m26),EQ(f3,"5"))
--                      EXTENSIONAL products(f3,producer_producerIdm26,productNamem26,type_typeIdm26,properties_numeric1m26,properties_numeric2m26,properties_numeric3m26,properties_numeric4m26,properties_numeric5m26,properties_numeric6m26,properties_textual1m26,properties_textual2m26,properties_textual3m26,properties_textual4m26,properties_textual5m26,properties_textual6m26,commentm26,producer_namem26,producer_countrym26,producer_homepagem26,type_labelm26,featuresm26,offersm26,reviewsm26)
--                FILTER AND(IS_NOT_NULL(properties_textual5m25),EQ(f1,"5"))
--                   EXTENSIONAL products(f1,producer_producerIdm25,productNamem25,type_typeIdm25,properties_numeric1m25,properties_numeric2m25,properties_numeric3m25,properties_numeric4m25,properties_numeric5m25,properties_numeric6m25,properties_textual1m25,properties_textual2m25,properties_textual3m25,properties_textual4m25,properties_textual5m25,properties_textual6m25,commentm25,producer_namem25,producer_countrym25,producer_homepagem25,type_labelm25,featuresm25,offersm25,reviewsm25)
--             FILTER AND(IS_NOT_NULL(properties_numeric4m17),EQ(f0,"5"))
--                EXTENSIONAL products(f0,producer_producerIdm17,productNamem17,type_typeIdm17,properties_numeric1m17,properties_numeric2m17,properties_numeric3m17,properties_numeric4m17,properties_numeric5m17,properties_numeric6m17,properties_textual1m17,properties_textual2m17,properties_textual3m17,properties_textual4m17,properties_textual5m17,properties_textual6m17,commentm17,producer_namem17,producer_countrym17,producer_homepagem17,type_labelm17,featuresm17,offersm17,reviewsm17)

WITH V1 AS (
SELECT `_id`, *
FROM mongo.`bsbm1000000`.`products`
WHERE `_id`=5),
V2 AS (
SELECT _id, properties['textual4'] AS propertyTextual4
FROM mongo.`bsbm1000000`.`products`
WHERE `_id`=5 AND properties['textual4'] IS NOT NULL
),
V12 AS (
  SELECT V1.`_id`, V2.`propertyTextual4`, V1.*
  FROM V1 LEFT JOIN V2
  ON V1._id = V2._id
),
V3 AS (
SELECT _id, properties['textual5'] AS propertyTextual5
FROM mongo.`bsbm1000000`.`products`
WHERE `_id`=5 AND properties['textual4'] IS NOT NULL
),
V123 AS (
  SELECT V12.`_id`, V12.`propertyTextual4`, V3.`propertyTextual5`, V12.*
  FROM V12 LEFT JOIN V3
  ON V12._id = V3._id
),
V4 AS (
  SELECT _id, properties['numeric5'] AS propertyTextual5
  FROM mongo.`bsbm1000000`.`products`
  WHERE `_id`=5 AND properties['numeric5'] IS NOT NULL)
SELECT V123._id, V4.`propertyTextual5`, V123.*
  FROM V123 LEFT JOIN V4
  ON V123._id = V4._id
