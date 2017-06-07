-- PREFIX : <http://awards.org/>
-- SELECT ?firstName1 ?lastName1 ?awName1 ?awName2 ?y
-- WHERE {
--  { ?sc1 :hasOccupation "computer scientist" ;
--    :hasReceived ?aw1 ; :hasReceived ?aw2 ;
--    :hasFirstName ?firstName1 ; :hasLastName ?lastName1 .
--    ?aw1 :hasTitle ?awName1 .
--    ?aw2 :hasTitle ?awName2 .
--    FILTER (?awName1 < ?awName2) }
--  OPTIONAL
--  { ?sc1 :hasReceived ?aw3 .
--    ?aw3 :receivedIn ?y ; :hasTitle "Turing Award" . }
-- }
--
--
-- ans1(firstName1,awName1,awName2,lastName1,y)
-- CONSTRUCT [firstName1, awName1, awName2, lastName1, y] [firstName1/http://www.w3.org/2001/XMLSchema#string(name_firstm9), lastName1/http://www.w3.org/2001/XMLSchema#string(name_lastm9), awName1/http://www.w3.org/2001/XMLSchema#string(awa_awardm8), awName2/http://www.w3.org/2001/XMLSchema#string(awa_awardm8f2), y/http://www.w3.org/2001/XMLSchema#integer(awa_yearm6)]
--    STRICT-FLATTEN occupationm9 -> flat-awards-occupation(occupation_idxm7,"computer scientist")
--       LJ EQ(_idm7,_idm7f0)
--          FILTER AND(IS_NOT_NULL(awa_awardm8f2),LT(http://www.w3.org/2001/XMLSchema#string(awa_awardm8),http://www.w3.org/2001/XMLSchema#string(awa_awardm8f2)))
--             STRICT-FLATTEN awardsm9 -> flat-awards-awards(awards_idxm5f4,awa_yearm8f1,awa_awardm8f2)
--                FILTER IS_NOT_NULL(awa_awardm8)
--                   STRICT-FLATTEN awardsm9 -> flat-awards-awards(awards_idxm5f3,awa_yearm8f0,awa_awardm8)
--                      FILTER AND(IS_NOT_NULL(name_firstm9),IS_NOT_NULL(name_lastm9))
--                         EXTENSIONAL awards(_idm7,name_firstm9,name_lastm9,birth_yearm9,birth_monthm9,birth_daym9,bornInm9,death_yearm9,death_monthm9,death_daym9,awardsm9,sexm9,occupationm9)
--          FILTER IS_NOT_NULL(awa_yearm6)
--             STRICT-FLATTEN awardsf12 -> flat-awards-awards(awards_idxm5,awa_yearm6,"Turing Award")
--                EXTENSIONAL awards(_idm7f0,name_firstf2,name_lastf9,birth_yearf10,birth_monthf5,birth_dayf11,bornInf3,death_yearf7,death_monthf8,death_dayf13,awardsf12,sexf6,occupationf4)

WITH V1 AS (
  SELECT
    `_id`,
    `name`['first'] AS firstName,
    `name`['last'] AS lastName,
    `award_1`['award'] AS `aw1`,
    `award_2`['award'] AS `aw2`
  FROM
  (
    SELECT
      `_id`,
      FLATTEN(`occupation`) as `an_occupation`,
      FLATTEN(`awards`) as `award_1`,
      FLATTEN(`awards`) as `award_2`,
      `name`
    FROM `mongo`.`awards_20170306`.`awards` as `awards`
    ) t1
  WHERE `award_1`['award'] < `award_2`['award'] AND
    `an_occupation`='computer scientist'),
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
SELECT V1.`_id`, V1.firstName, V1.lastName, V1.aw1, V1.aw2, V2.`award_3`['year']
FROM
V1 LEFT JOIN V2
ON V1.`_id` = V2.`_id`