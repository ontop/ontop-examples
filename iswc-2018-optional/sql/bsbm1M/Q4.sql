SELECT
v4.nr, person_id, person_name, review_text, reviewDate, rating1, rating2, rating3, rating4
FROM (SELECT
        v3.nr, person_id, person_name, review_text, reviewDate, rating1, rating2, rating3
              FROM
      (  SELECT v1.nr, person_id, person_name, review_text, reviewDate, rating1, rating2 FROM
		(SELECT review.nr,
		person.nr AS person_id,
		review.text AS review_text,
		reviewDate,
		person.name AS person_name,
		 review.rating1
		  FROM review, person WHERE
		 review.person = person.nr
		 AND product < 1000
		 -- AND product=247
		 AND language='en') v1
		 LEFT JOIN
		  ( SELECT nr, review.rating2 FROM review) v2 ON  v1.nr = v2.nr ) v12
    LEFT JOIN (SELECT nr, review.rating3 FROM review) v3 ON  v12.nr = v3.nr) v4
    LEFT JOIN (SELECT nr, review.rating4 FROM review) v5 ON  v5.nr = v4.nr
;