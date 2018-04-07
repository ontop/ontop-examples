SELECT *

FROM

(SELECT *
FROM

(select nr, label p_label from product where nr < 1000) p
left join

(select o.nr as onr, o.product AS product, o.price, v.nr as vnr, v.label v_label from offer o, vendor v where
  o.vendor=v.nr AND v.country='DE' AND o.validTo>'1985-01-01'
    and o.product < 1000  -- necessary for performance
  ) ov
  ON
  p.nr = ov.product
  ) pov

LEFT JOIN

(select r.nr as rnr, r.product AS product, r.title, pn.nr as pnnr, pn.name, r.rating1, r.rating2
 from (  SELECT v1.nr, product, title, person, review_text, reviewDate, rating1, rating2 FROM
		(SELECT review.nr, product, title, person,
		  review.text AS review_text,
		  reviewDate,
		  review.rating1
		  FROM review
		 ) v1
		 LEFT JOIN
		  ( SELECT nr, review.rating2 FROM review) v2 ON  v1.nr = v2.nr ) r, person pn
  where  r.person=pn.nr
    and r.product < 1000 -- necessary for performance
)

   rpn
  ON pov.product = rpn.product
;