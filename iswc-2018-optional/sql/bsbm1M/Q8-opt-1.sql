(SELECT
          product,
          nr,
          language
        FROM review
        where language = 'en')

       UNION

       (SELECT
          product,
          nr,
          language
        FROM review
        where language = 'zh'
              AND product NOT IN (SELECT product
                                  FROM review
                                  where language = 'en'))

--  en OPITONAL zh
-- -> (en JOIN zh) UNION (zh \ en)
--