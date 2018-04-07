(SELECT product, 'en' AS lang,
       text AS review_text
FROM review
WHERE language = 'en' AND product < 1000)

UNION ALL

(SELECT v1.product AS product, 'zh' AS lang,
       v1.text AS review_text
FROM review v1
LEFT JOIN review v2 ON v1.product = v2.product AND v2.language = 'en'
WHERE v1.product < 1000 AND v1.language = 'zh' AND v2.product IS NULL );
