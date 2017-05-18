-- PREFIX : <http://awards.org/>
-- SELECT ?fn ?ln ?year
-- WHERE {
--  { ?sc1 a :Female ; :hasOccupation "computer scientist" ;
--    :hasFirstName ?fn ; :hasLastName ?ln . }
--  OPTIONAL
--  { ?sc1 :hasReceived ?aw1 .
--    ?aw1 :receivedIn ?y ; :hasTitle "Turing Award" . }
-- }
--
--
-- ans1(ln,fn,y)
-- CONSTRUCT [ln, fn, y] [ln/http://www.w3.org/2001/XMLSchema#string(name_last), fn/http://www.w3.org/2001/XMLSchema#string(name_first), y/http://www.w3.org/2001/XMLSchema#integer(awa_yearm6)]
--    STRICT-FLATTEN occupation -> flat-awards-occupation(occupation_idxm7,"computer scientist")
--       LJ EQ(_idm16,_idm16f1)
--          FILTER AND(AND(IS_NOT_NULL(name_first),IS_NOT_NULL(name_last)),EQ(f0,"female"))
--             EXTENSIONAL awards(_idm16,name_first,name_last,birth_year,birth_month,birth_day,bornIn,death_year,death_month,death_day,awards,f0,occupation)
--          FILTER IS_NOT_NULL(awa_yearm6)
--             STRICT-FLATTEN awardsf10 -> flat-awards-awards(awards_idxm5,awa_yearm6,"Turing Award")
--                EXTENSIONAL awards(_idm16f1,name_firstf0,name_lastf7,birth_yearf8,birth_monthf3,birth_dayf9,bornInf1,death_yearf5,death_monthf6,death_dayf11,awardsf10,sexf4,occupationf2)

WITH V1 AS (
  SELECT
    `_id`,
    `name`['first'] AS firstName,
    `name`['last'] AS lastName
  FROM
  (
    SELECT
      `_id`,
      FLATTEN(`occupation`) as `an_occupation`,
      `name`
    FROM `mongo`.`awards_20170306`.`awards` as `awards`
    WHERE  `sex` ='female'
    ) t1
  WHERE `an_occupation`='computer scientist'),
  V2 AS (
    SELECT
  `_id`,
  `name`['first'] AS firstName,
  `name`['last'] AS lastName,
  `award_3`['award'] AS `aw3`,
  `award_3`
  FROM
  (
    SELECT
      `_id`,
      FLATTEN(`occupation`) as `an_occupation`,
      FLATTEN(`awards`) as `award_3`,
      `name`
    FROM `mongo`.`awards_20170306`.`awards` as `awards`
    ) t2
  WHERE `award_3`['award'] = 'Turing Award')
SELECT V1.`_id`, V1.firstName, V1.lastName, V2.`award_3`['year']
FROM
V1 LEFT JOIN V2
ON V1.`_id` = V2.`_id`