SELECT *
FROM
(SELECT *
FROM
(select "nr", "label" "p_label" from "product" where "nr" < 1000) "p"
left join
(select "o"."nr" as "onr", "o"."product" AS "product", "o"."price", "v"."nr" as "vnr", "v"."label" "v_label"
  from "offer" "o", "vendor" "v" where
  "o"."vendor"="v"."nr" AND "v"."country"='DE' AND "o"."validTo">TO_DATE('1985-01-01','YYYY-MM-DD')
  and "o"."product" < 1000  -- necessary for performance
  ) "ov"
  ON
  "p"."nr" = "ov"."product") "pov"
LEFT JOIN
(select "r"."nr" as "rnr", "r"."product" AS "product", "r"."title", "pn"."nr" as "pnnr", "pn"."name", "r"."rating1", "r"."rating2"
 from "review" "r", "person" "pn"
  where  "r"."person" = "pn"."nr"
  and "r"."product" < 1000 -- necessary for performance
  ) "rpn"
  ON "pov"."product" = "rpn"."product"
;