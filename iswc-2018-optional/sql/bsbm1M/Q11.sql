SELECT
    reviewer_name,
    product_label,
    review_text,
    COALESCE(homepage_producer, homepage_vendor) AS homepage
  FROM
    (SELECT
       v1.product_id,
       product_label,
       review_id,
       v1.reviewer_id AS reviewer_id,
       reviewer_name,
       review_text,
       homepage_producer,
        country
     FROM
       (SELECT
          product.nr    AS product_id,
          product.label AS product_label,
          review.nr     AS review_id,
          person.nr     AS reviewer_id,
          person.name   AS reviewer_name,
          review.text   AS review_text
        FROM review, person, product
        WHERE review.person = person.nr AND review.product = product.nr AND product.nr < 1000) v1
       LEFT JOIN (SELECT
                    product.nr        AS product_id,
                    producer.nr       AS producer_id,
                    producer.country,
                    person.nr         AS reviewer_id,
                    producer.homepage AS homepage_producer
                  FROM product, producer, person
                  WHERE product.producer = producer.nr AND producer.country = person.country
                        AND product.nr < 1000) v2
         ON v1.product_id = v2.product_id AND v1.reviewer_id = v2.reviewer_id) v12
    LEFT JOIN
    (SELECT
       offer.nr        AS offer_id,
       offer.product   AS product_id,
       vendor.nr       AS vendor_id,
       vendor.country  AS country,
       vendor.homepage AS homepage_vendor,
        person.nr AS reviewer_id
     FROM offer, vendor, person
     WHERE offer.vendor = vendor.nr AND vendor.country = person.country
           AND offer.product < 1000
    ) v3
      ON v12.product_id = v3.product_id AND v12.reviewer_id = v3.reviewer_id
         AND (v12.country = v3.country OR v12.country IS NULL);