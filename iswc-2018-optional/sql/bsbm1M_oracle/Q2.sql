SELECT *
FROM (
       SELECT
         CONCAT('http://www4.wiwiss.fu-berlin.de/bizer/bsbm/v01/instances/dataFromProducer/Product', producttypeproductVIEW0."product") AS product,
         productVIEW2."label" AS label
       FROM
         "producttypeproduct" producttypeproductVIEW0
         JOIN
         ("productfeatureproduct" productfeatureproductVIEW1
           JOIN
           "product" productVIEW2
             ON (1 = 1))
           ON -- (producttypeproductVIEW0.productType = '24') AND
             (productfeatureproductVIEW1."productFeature" = '78') AND
             (producttypeproductVIEW0."product" = productfeatureproductVIEW1."product") AND
             (producttypeproductVIEW0."product" = productVIEW2."nr")
         LEFT OUTER JOIN
         (SELECT
            productfeatureproductVIEW0."product" AS v0,
            productVIEW1."label" AS v1,
            productVIEW1."label" AS v2
          FROM
            "productfeatureproduct" productfeatureproductVIEW0,
            "product" productVIEW1
          WHERE
            (productfeatureproductVIEW0."productFeature" = '1') AND
            (productfeatureproductVIEW0."product" = productVIEW1."nr")) QontopSubquery5View
           ON QontopSubquery5View.v1 IS NOT NULL AND
              (producttypeproductVIEW0."product" = QontopSubquery5View.v0)
       WHERE
         (productVIEW2."propertyNum1" > 500) AND
         (productVIEW2."propertyNum3" < 1000) AND
         QontopSubquery5View.v2 IS NULL AND
         productVIEW2."label" IS NOT NULL AND
         productVIEW2."propertyNum3" IS NOT NULL AND
         productVIEW2."propertyNum1" IS NOT NULL
     ) SUB_QVIEW;

