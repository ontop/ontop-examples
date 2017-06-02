-- PREFIX : <http://awards.org/>
-- SELECT DISTINCT ?firstName ?lastName
-- WHERE {
--  ?x :hasReceived ?aw1 ; :hasReceived ?aw2 ; :bornIn ?country ;
--  :hasFirstName ?firstName ; :hasLastName ?lastName .
--  ?aw1 :hasTitle ?awName1 .
--  ?aw2 :hasTitle ?awName2 .
--  FILTER ((?aw1 != ?aw2) &&
--  (?country != "United States of America") &&
--  ((?awName1 = "Academy Award for Best Actor") ||
--  (?awName1 = "Academy Award for Best Supporting Actor") ||
--  (?awName1 = "Academy Award for Best Actress") ||
--  (?awName1 = "Academy Award for Best Supporting Actress")) &&
--  ((?awName2 = "Academy Award for Best Actor") || +
--  (?awName2 = "Academy Award for Best Supporting Actor") ||
--  (?awName2 = "Academy Award for Best Actress") || +
--  (?awName2 = "Academy Award for Best Supporting Actress")))
-- }
--
-- ans1(firstName,lastName)
-- CONSTRUCT [firstName, lastName] [lastName/http://www.w3.org/2001/XMLSchema#string(name_lastm9), firstName/http://www.w3.org/2001/XMLSchema#string(name_firstm9)]
--    FILTER AND(AND(AND(AND(OR(EQ(awa_awardm8f1,"Academy Award for Best Actor"),OR(EQ(awa_awardm8f1,"Academy Award for Best Supporting Actor"),OR(EQ(awa_awardm8f1,"Academy Award for Best Actress"),EQ(awa_awardm8f1,"Academy Award for Best Supporting Actress")))),IS_NOT_NULL(awa_awardm8f1)),NEQ(awards_idxm5f3,awards_idxm5)),OR(EQ(awa_awardm8,"Academy Award for Best Actor"),OR(EQ(awa_awardm8,"Academy Award for Best Supporting Actor"),OR(EQ(awa_awardm8,"Academy Award for Best Actress"),EQ(awa_awardm8,"Academy Award for Best Supporting Actress"))))),IS_NOT_NULL(awa_awardm8))
--       STRICT-FLATTEN awardsm9 -> flat-awards-awards(awards_idxm5f3,awa_yearm8f0,awa_awardm8f1)
--          STRICT-FLATTEN awardsm9 -> flat-awards-awards(awards_idxm5,awa_yearm8,awa_awardm8)
--             FILTER AND(AND(AND(NEQ(bornInm9,"United States of America"),IS_NOT_NULL(bornInm9)),IS_NOT_NULL(name_firstm9)),IS_NOT_NULL(name_lastm9))
--                EXTENSIONAL awards(_idm5,name_firstm9,name_lastm9,birth_yearm9,birth_monthm9,birth_daym9,bornInm9,death_yearm9,death_monthm9,death_daym9,awardsm9,sexm9,occupationm9)

SELECT `name`['first'] AS firstName, `name`['last'] AS lastName
FROM
(
  SELECT FLATTEN(`awards`.`awards`) as `award_1`,
         FLATTEN(`awards`.`awards`) as `award_2`,
         `name`
  FROM `mongo`.`awards_20170306`.`awards` as `awards`
  WHERE `bornIn`='United States of America'
) t
WHERE `award_1`['id'] <> `award_2`['id']
  AND (`award_1`['award'] = 'Academy Award for Best Actor'
    OR `award_1`['award'] = 'Academy Award for Best Supporting Actor'
    OR `award_1`['award'] = 'Academy Award for Best Actress'
    OR `award_1`['award'] = 'Academy Award for Best Supporting Actress')
  AND (`award_2`['award'] = 'Academy Award for Best Actor'
    OR `award_2`['award'] = 'Academy Award for Best Supporting Actor'
    OR `award_2`['award'] = 'Academy Award for Best Actress'
    OR `award_2`['award'] = 'Academy Award for Best Supporting Actress')

