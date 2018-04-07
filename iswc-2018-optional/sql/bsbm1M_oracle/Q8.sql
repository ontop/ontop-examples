SELECT DISTINCT
        v01."product",
        COALESCE(lang_en, lang_zh)           AS lang,
        COALESCE(review_en_id, review_zh_id) AS review_id
      FROM
        (
          SELECT
            v0."product"      AS "product",
            v1.review_en_id AS review_en_id,
            v1."language"     AS lang_en,
            v1."text"         AS review_en
          FROM (SELECT "review"."product"
                FROM "review"
                WHERE ("review"."language" = 'en' OR "review"."language" = 'zh'
                 AND "product" < 1000)
               ) v0
            LEFT JOIN
            (SELECT
               "review"."product",
               "review"."nr" AS review_en_id,
               "review"."language",
               "review"."text"
             FROM "review"
             WHERE ("review"."language" = 'en'
             AND "product" < 1000
             )
            ) v1
              ON v0."product" = v1."product"
        ) v01
        LEFT JOIN
        (SELECT
           "review"."product",
           "review"."nr"       AS review_zh_id,
           "review"."language" AS lang_zh,
           "review"."text"     AS review_zh
         FROM "review"
         WHERE ("review"."language" = 'zh'
         AND "product" < 1000
         )
        ) v2
          ON v01."product" = v2."product";