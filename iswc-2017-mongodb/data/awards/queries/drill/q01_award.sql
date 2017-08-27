-- ans1(x)
-- CONSTRUCT [x] [x/URI("http://ex.org/awards/person/{}/award/{}",_idm14,awards_idxm14)]
--    STRICT-FLATTEN awards -> flat-awards-awards(awards_idxm14,awa_yearm14,awa_awardm14)
--       EXTENSIONAL awards(_idm14,name_first,name_last,birth_year,birth_month,birth_day,bornIn,death_year,death_month,death_day,awards,sex,occupation)

SELECT 'http://ex.org/awards/person/' || `t`.`fawards`['id'] || `t`.`fawards`['award'] AS x
FROM
(SELECT FLATTEN(`awards`) as `fawards`
FROM `mongo`.`awards_20170306`.`awards` as `awards`) t