-- PREFIX : <http://awards.org/>
-- SELECT DISTINCT ?awName
-- WHERE {
--  ?sc1 :hasReceived ?aw1 .
--  ?aw1 :receivedIn ?y ; :hasTitle ?awName .
--  ?sc2 :hasReceived ?aw2 .
--  ?aw2 :receivedIn ?y ; :hasTitle ?awName .
--  ?sc3 :hasReceived ?aw3 .
--  ?aw3 :receivedIn ?y ; :hasTitle ?awName .
--  FILTER ((?y > 2010) && (?sc1 != ?sc2) && (?sc1 != ?sc3) && (?sc2 != ?sc3))
-- }
--
--
-- ans1(awName)
-- CONSTRUCT [awName] [awName/http://www.w3.org/2001/XMLSchema#string(awa_awardm8f2)]
--    FILTER AND(AND(AND(GT(http://www.w3.org/2001/XMLSchema#integer(awa_yearm8f0),http://www.w3.org/2001/XMLSchema#integer(2010)),IS_NOT_NULL(awa_yearm8f0)),IS_NOT_NULL(awa_awardm8f2)),AND(EQ(awa_yearm8f0,awa_yearm8f0f0),EQ(awa_awardm8f2,awa_awardm8f2f1)))
--       STRICT-FLATTEN awardsf11 -> flat-awards-awards(awards_idxm5f3,awa_yearm8f0f0,awa_awardm8f2f1)
--          STRICT-FLATTEN awardsf10 -> flat-awards-awards(awards_idxm5f4,awa_yearm8f0,awa_awardm8f2)
--             STRICT-FLATTEN awards -> flat-awards-awards(awards_idxm5,awa_yearm8f0,awa_awardm8f2)
--                JOIN AND(AND(NEQ(_idm5,_idm5f3),NEQ(_idm5,_idm5f2)),NEQ(_idm5f2,_idm5f3))
--                   EXTENSIONAL awards(_idm5,name_first,name_last,birth_year,birth_month,birth_day,bornIn,death_year,death_month,death_day,awards,sex,occupation)
--                   EXTENSIONAL awards(_idm5f3,name_firstf0,name_lastf7,birth_yearf8,birth_monthf3,birth_dayf9,bornInf1,death_yearf5,death_monthf6,death_dayf11,awardsf10,sexf4,occupationf2)
--                   EXTENSIONAL awards(_idm5f2,name_firstf1,name_lastf8,birth_yearf9,birth_monthf4,birth_dayf10,bornInf2,death_yearf6,death_monthf7,death_dayf12,awardsf11,sexf5,occupationf3)


-- UNSUPPORTED (CARTESIAN JOIN OR INEQUALITY JOIN) !!

SELECT `award_1`['award'] AS x
FROM
(
SELECT FLATTEN(`awards_1`.`awards`) as `award_1`,
  FLATTEN(`awards_2`.`awards`) as `award_2`,
  FLATTEN(`awards_3`.`awards`) as `award_3`
FROM
`mongo`.`awards_20170306`.`awards` as `awards_1`,
`mongo`.`awards_20170306`.`awards` as `awards_2`,
`mongo`.`awards_20170306`.`awards` as `awards_3`
WHERE `awards_1`.`_id` <> `awards_2`.`_id` AND
  `awards_1`.`_id` <> `awards_3`.`_id` AND
  `awards_1`.`_id` <> `awards_3`.`_id`
) t
WHERE `award_1`['year'] = `award_2`['year'] AND
  `award_1`['year'] = `award_3`['year'] AND
  `award_2`['year'] = `award_3`['year'] AND
  `award_1`['year'] > 2010 AND
  `award_1`['award'] = `award_2`['award']  AND
  `award_1`['award'] = `award_3`['award']  AND
  `award_2`['award'] = `award_3`['award']