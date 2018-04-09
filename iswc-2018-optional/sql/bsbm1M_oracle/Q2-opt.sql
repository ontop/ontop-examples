-- Parameter	Description
-- @ProductType@	A randomly selected Class ID from the class hierarchy (leaf level).
-- @ProductFeature1@, @ProductFeature2@
-- Three different, randomly selected product feature ID that correspond to the chosen product type.
-- @x@
-- @y@
-- Two random numbers between 1 and 500


SELECT
  CONCAT('http://www4.wiwiss.fu-berlin.de/bizer/bsbm/v01/instances/dataFromProducer/Product', "p"."nr") AS product,
   "p"."label" AS label,
   CONCAT('http://www4.wiwiss.fu-berlin.de/bizer/bsbm/v01/instances/ProductType', "ptp"."productType") AS type
FROM "product" "p", "producttypeproduct" "ptp"
WHERE "p"."nr"="ptp"."product"
--	AND productType=24 -- @ProductType@
 	AND "propertyNum1">500 -- @x@
 	AND "propertyNum3"<1000 -- @y@
	AND 78  -- @ProductFeature1@
	  IN (SELECT "productFeature"
	   FROM "productfeatureproduct" WHERE "product"="p"."nr")
	AND 1 NOT IN (SELECT "productFeature" FROM "productfeatureproduct" WHERE "product"="p"."nr")
;
