-- Parameter	Description
-- @ProductType@	A randomly selected Class ID from the class hierarchy (leaf level).
-- @ProductFeature1@, @ProductFeature2@
-- Three different, randomly selected product feature ID that correspond to the chosen product type.
-- @x@
-- @y@
-- Two random numbers between 1 and 500


SELECT "p"."nr", "p"."label"
FROM "product" "p", "producttypeproduct" "ptp"
WHERE "p"."nr"="ptp"."product"
--	AND productType=24 -- @ProductType@
 	AND "propertyNum1">500 -- @x@
 	AND "propertyNum3"<1000 -- @y@
	AND 78  -- @ProductFeature1@
	  IN (SELECT "productFeature" FROM "productfeatureproduct" WHERE "product"="p"."nr")
	AND 1 NOT IN (SELECT "productFeature" FROM "productfeatureproduct" WHERE "product"="p"."nr")
;
