SELECT -- DISTINCT
         reviewer_name,
         product_label,
         review_text,
         (CASE WHEN country_reviewer = country_producer THEN homepage_producer ELSE homepage_vendor END) AS homepage
       FROM
         (SELECT
            product.nr        AS product_id,
            product.label     AS product_label,
            review.text       AS review_text,
            producer.homepage AS homepage_producer,
            person.name   AS reviewer_name,
            person.country    AS country_reviewer,
            producer.country  AS country_producer
          FROM review, person, product, producer
          WHERE review.product = product.nr AND person.nr = review.person AND producer.nr = product.producer AND
                product.nr < 1000) v1
         LEFT JOIN
         (SELECT
            offer.product   AS product_id,
            vendor.homepage AS homepage_vendor,
            vendor.country  AS country_vendor
          FROM offer, vendor
          WHERE offer.vendor = vendor.nr AND offer.product < 1000) v2
           ON v1.product_id = v2.product_id AND country_reviewer = country_vendor;