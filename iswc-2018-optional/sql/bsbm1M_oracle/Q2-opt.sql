SELECT
    CONCAT('http://www4.wiwiss.fu-berlin.de/bizer/bsbm/v01/instances/dataFromProducer/Product', v1.productId) AS product,
   v1.label,
   CONCAT('http://www4.wiwiss.fu-berlin.de/bizer/bsbm/v01/instances/ProductType', v1.productType) AS type
   FROM
(SELECT p."nr" AS productId, p."label" AS label, ptp."productType" AS productType
  FROM "product" p, "producttypeproduct" ptp, "productfeatureproduct" pfp
  WHERE p."nr"=ptp."product" AND
    "propertyNum1">500 -- @x@
 	  AND "propertyNum3"<1000 -- @y@
	  AND  "productFeature"  = 78 AND pfp."product"=p."nr") v1
  LEFT JOIN
    "productfeatureproduct" v2
  ON (v2."productFeature" = 1 AND v2."product"=v1.productId)
  WHERE v2."productFeature" IS NULL;
