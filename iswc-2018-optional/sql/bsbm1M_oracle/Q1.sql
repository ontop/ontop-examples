SELECT
  v2."product_id",
  v2."label",
  v2."comment",
  v2."producer",
  v2."productFeature",
  v2."propertyTex1",
  v2."propertyTex2",
  v2."propertyTex3",
  v2."propertyNum1",
  v2."propertyNum2",
  v2."propertyTex4",
  v2."propertyTex5",
  pt_propertyNum4."propertyNum4",
  producer_label
FROM (
       SELECT
         v1."product_id",
         v1."label",
         v1."comment",
         v1."producer",
         v1."productFeature",
         v1."propertyTex1",
         v1."propertyTex2",
         v1."propertyTex3",
         v1."propertyNum1",
         v1."propertyNum2",
         v1."propertyTex4",
         pt_propertyTex5."propertyTex5",
         producer_label
       FROM
         (SELECT
            v0."product_id",
            v0."label",
            v0."comment",
            v0."producer",
            v0."productFeature",
            v0."propertyTex1",
            v0."propertyTex2",
            v0."propertyTex3",
            v0."propertyNum1",
            v0."propertyNum2",
            "pt_propertyTex4"."propertyTex4",
            producer_label
          FROM
            (SELECT
               "pt"."nr" "product_id",
               "pt"."label",
               "pt"."comment",
               "pt"."producer",
               "pfp"."productFeature",
               "propertyTex1",
               "propertyTex2",
               "propertyTex3",
               "propertyNum1",
               "propertyNum2",
               "pr"."label" AS producer_label
             FROM "product" "pt", "producer" "pr", "productfeatureproduct" "pfp"
             WHERE "pt"."nr" < 1000 --  @productXYZ@@ --
                   AND "pt"."nr" = "pfp"."product" AND "pt"."producer" = "pr"."nr"
            ) v0
            LEFT JOIN
            "product" "pt_propertyTex4"
              ON v0."product_id" = "pt_propertyTex4"."nr" AND "pt_propertyTex4"."propertyTex4" IS NOT NULL) v1
         LEFT JOIN
         "product" pt_propertyTex5 ON v1."product_id" = pt_propertyTex5."nr" AND pt_propertyTex5."propertyTex5" IS NOT NULL) v2
  LEFT JOIN
  "product" pt_propertyNum4 ON v2."product_id" = pt_propertyNum4."nr" AND pt_propertyNum4."propertyNum4" IS NOT NULL;