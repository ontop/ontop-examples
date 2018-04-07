-- @ProductXYZ@=1

SELECT "pt"."label", "pt"."comment", "pt"."producer", "pfp"."productFeature", "propertyTex1", "propertyTex2", "propertyTex3",
	"propertyNum1", "propertyNum2", "propertyTex4", "propertyTex5", "propertyNum4", "pr"."label" AS "producer_label"
FROM "product" "pt", "producer" "pr", "productfeatureproduct" "pfp"
WHERE "pt"."nr"<1000 AND "pt"."nr"="pfp"."product" AND "pt"."producer"="pr"."nr";

-- SELECT
--    4 AS `propertyNumeric2QuestType`, NULL AS `propertyNumeric2Lang`, CAST(`Qbsbm250k_productVIEW0`.`propertyNum2` AS SIGNED) AS `propertyNumeric2`,
--    4 AS `propertyNumeric1QuestType`, NULL AS `propertyNumeric1Lang`, CAST(`Qbsbm250k_productVIEW0`.`propertyNum1` AS SIGNED) AS `propertyNumeric1`,
--    4 AS `propertyNumeric4QuestType`, NULL AS `propertyNumeric4Lang`, CAST(CASE WHEN `Qbsbm250k_productVIEW0`.`propertyNum4` IS NOT NULL THEN `Qbsbm250k_productVIEW0`.`propertyNum4`
-- ELSE NULL END  AS SIGNED) AS `propertyNumeric4`,
--    7 AS `producerQuestType`, NULL AS `producerLang`, CAST(`Qbsbm250k_producerVIEW1`.`label` AS CHAR(8000) CHARACTER SET utf8) AS `producer`,
--    7 AS `commentQuestType`, NULL AS `commentLang`, CAST(`Qbsbm250k_productVIEW0`.`comment` AS CHAR(8000) CHARACTER SET utf8) AS `comment`,
--    7 AS `labelQuestType`, NULL AS `labelLang`, CAST(`Qbsbm250k_productVIEW0`.`label` AS CHAR(8000) CHARACTER SET utf8) AS `label`,
--    7 AS `propertyTextual1QuestType`, NULL AS `propertyTextual1Lang`, CAST(`Qbsbm250k_productVIEW0`.`propertyTex1` AS CHAR(8000) CHARACTER SET utf8) AS `propertyTextual1`,
--    7 AS `propertyTextual2QuestType`, NULL AS `propertyTextual2Lang`, CAST(`Qbsbm250k_productVIEW0`.`propertyTex2` AS CHAR(8000) CHARACTER SET utf8) AS `propertyTextual2`,
--    7 AS `propertyTextual3QuestType`, NULL AS `propertyTextual3Lang`, CAST(`Qbsbm250k_productVIEW0`.`propertyTex3` AS CHAR(8000) CHARACTER SET utf8) AS `propertyTextual3`,
--    7 AS `propertyTextual4QuestType`, NULL AS `propertyTextual4Lang`, CAST(CASE WHEN `Qbsbm250k_productVIEW0`.`propertyTex4` IS NOT NULL THEN `Qbsbm250k_productVIEW0`.`propertyTex4`
-- ELSE NULL END  AS CHAR(8000) CHARACTER SET utf8) AS `propertyTextual4`,
--    7 AS `productFeatureQuestType`, NULL AS `productFeatureLang`, CAST(`Qbsbm250k_productfeatureVIEW3`.`label` AS CHAR(8000) CHARACTER SET utf8) AS `productFeature`,
--    7 AS `propertyTextual5QuestType`, NULL AS `propertyTextual5Lang`, CAST(CASE WHEN `Qbsbm250k_productVIEW0`.`propertyTex5` IS NOT NULL THEN `Qbsbm250k_productVIEW0`.`propertyTex5`
-- ELSE NULL END  AS CHAR(8000) CHARACTER SET utf8) AS `propertyTextual5`
-- FROM
--     `bsbm250k`.`product` `Qbsbm250k_productVIEW0`
--         JOIN
--             (`bsbm250k`.`producer` `Qbsbm250k_producerVIEW1`
--                 JOIN
--                     (`bsbm250k`.`productfeatureproduct` `Qbsbm250k_productfeatureproductVIEW2`
--                         JOIN
--                             `bsbm250k`.`productfeature` `Qbsbm250k_productfeatureVIEW3`
--                         ON (1 = 1))
--                 ON (1 = 1))
--         ON (`Qbsbm250k_productVIEW0`.`nr` = '1') AND
--         (`Qbsbm250k_productfeatureproductVIEW2`.`product` = '1') AND
--         (`Qbsbm250k_productVIEW0`.`producer` = `Qbsbm250k_producerVIEW1`.`nr`) AND
--         (`Qbsbm250k_productfeatureproductVIEW2`.`productFeature` = `Qbsbm250k_productfeatureVIEW3`.`nr`)
-- WHERE
--     `Qbsbm250k_productVIEW0`.`propertyTex3` IS NOT NULL AND
--     `Qbsbm250k_producerVIEW1`.`label` IS NOT NULL AND
--     `Qbsbm250k_productVIEW0`.`propertyTex1` IS NOT NULL AND
--     `Qbsbm250k_productVIEW0`.`producer` IS NOT NULL AND
--     `Qbsbm250k_productVIEW0`.`comment` IS NOT NULL AND
--     `Qbsbm250k_productVIEW0`.`propertyNum1` IS NOT NULL AND
--     `Qbsbm250k_productVIEW0`.`label` IS NOT NULL AND
--     `Qbsbm250k_productfeatureVIEW3`.`label` IS NOT NULL AND
--     `Qbsbm250k_productVIEW0`.`propertyTex2` IS NOT NULL AND
--     `Qbsbm250k_productVIEW0`.`propertyNum2` IS NOT NULL