SELECT f1.facility, f1.country, f1.id, f2.wellbore, f2.year, f2.company FROM
(SELECT *
FROM (
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Singapore' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_owner_hst qview1,
facility_moveable qview2,
tuf_owner_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Singapore') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.tufNpdidTuf) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Singapore' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_owner_hst qview1,
facility_moveable qview2,
tuf_operator_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Singapore') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.tufNpdidTuf) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Singapore' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_owner_hst qview1,
facility_moveable qview2,
facility_fixed qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Singapore') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Singapore' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_owner_hst qview1,
facility_moveable qview2,
facility_moveable qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Singapore') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Great_Britain' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_owner_hst qview1,
facility_moveable qview2,
tuf_owner_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'GREAT BRITAIN') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.tufNpdidTuf) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Great_Britain' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_owner_hst qview1,
facility_moveable qview2,
tuf_operator_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'GREAT BRITAIN') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.tufNpdidTuf) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Great_Britain' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_owner_hst qview1,
facility_moveable qview2,
facility_fixed qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'GREAT BRITAIN') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Great_Britain' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_owner_hst qview1,
facility_moveable qview2,
facility_moveable qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'GREAT BRITAIN') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Panama' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_owner_hst qview1,
facility_moveable qview2,
tuf_owner_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Panama') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.tufNpdidTuf) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Panama' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_owner_hst qview1,
facility_moveable qview2,
tuf_operator_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Panama') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.tufNpdidTuf) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Panama' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_owner_hst qview1,
facility_moveable qview2,
facility_fixed qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Panama') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Panama' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_owner_hst qview1,
facility_moveable qview2,
facility_moveable qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Panama') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Liberia' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_owner_hst qview1,
facility_moveable qview2,
tuf_owner_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Liberia') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.tufNpdidTuf) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Liberia' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_owner_hst qview1,
facility_moveable qview2,
tuf_operator_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Liberia') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.tufNpdidTuf) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Liberia' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_owner_hst qview1,
facility_moveable qview2,
facility_fixed qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Liberia') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Liberia' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_owner_hst qview1,
facility_moveable qview2,
facility_moveable qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Liberia') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Russia' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_owner_hst qview1,
facility_moveable qview2,
tuf_owner_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Russian federation') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.tufNpdidTuf) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Russia' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_owner_hst qview1,
facility_moveable qview2,
tuf_operator_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Russian federation') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.tufNpdidTuf) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Russia' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_owner_hst qview1,
facility_moveable qview2,
facility_fixed qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Russian federation') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Russia' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_owner_hst qview1,
facility_moveable qview2,
facility_moveable qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Russian federation') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/The_Bahamas' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_owner_hst qview1,
facility_moveable qview2,
tuf_owner_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Bahamas') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.tufNpdidTuf) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/The_Bahamas' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_owner_hst qview1,
facility_moveable qview2,
tuf_operator_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Bahamas') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.tufNpdidTuf) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/The_Bahamas' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_owner_hst qview1,
facility_moveable qview2,
facility_fixed qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Bahamas') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/The_Bahamas' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_owner_hst qview1,
facility_moveable qview2,
facility_moveable qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Bahamas') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Marshall_Islands' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_owner_hst qview1,
facility_moveable qview2,
tuf_owner_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Marshall islands') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.tufNpdidTuf) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Marshall_Islands' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_owner_hst qview1,
facility_moveable qview2,
tuf_operator_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Marshall islands') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.tufNpdidTuf) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Marshall_Islands' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_owner_hst qview1,
facility_moveable qview2,
facility_fixed qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Marshall islands') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Marshall_Islands' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_owner_hst qview1,
facility_moveable qview2,
facility_moveable qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Marshall islands') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/China' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_owner_hst qview1,
facility_moveable qview2,
tuf_owner_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'China') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.tufNpdidTuf) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/China' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_owner_hst qview1,
facility_moveable qview2,
tuf_operator_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'China') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.tufNpdidTuf) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/China' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_owner_hst qview1,
facility_moveable qview2,
facility_fixed qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'China') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/China' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_owner_hst qview1,
facility_moveable qview2,
facility_moveable qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'China') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Norway' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_owner_hst qview1,
facility_moveable qview2,
tuf_owner_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'NORWAY') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.tufNpdidTuf) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Norway' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_owner_hst qview1,
facility_moveable qview2,
tuf_operator_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'NORWAY') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.tufNpdidTuf) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Norway' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_owner_hst qview1,
facility_moveable qview2,
facility_fixed qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'NORWAY') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Norway' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_owner_hst qview1,
facility_moveable qview2,
facility_moveable qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'NORWAY') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Denmark' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_owner_hst qview1,
facility_moveable qview2,
tuf_owner_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Denmark') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.tufNpdidTuf) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Denmark' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_owner_hst qview1,
facility_moveable qview2,
tuf_operator_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Denmark') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.tufNpdidTuf) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Denmark' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_owner_hst qview1,
facility_moveable qview2,
facility_fixed qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Denmark') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Denmark' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_owner_hst qview1,
facility_moveable qview2,
facility_moveable qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Denmark') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Singapore' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_operator_hst qview1,
facility_moveable qview2,
tuf_owner_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Singapore') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.tufNpdidTuf) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Singapore' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_operator_hst qview1,
facility_moveable qview2,
tuf_operator_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Singapore') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.tufNpdidTuf) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Singapore' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_operator_hst qview1,
facility_moveable qview2,
facility_fixed qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Singapore') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Singapore' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_operator_hst qview1,
facility_moveable qview2,
facility_moveable qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Singapore') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Great_Britain' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_operator_hst qview1,
facility_moveable qview2,
tuf_owner_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'GREAT BRITAIN') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.tufNpdidTuf) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Great_Britain' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_operator_hst qview1,
facility_moveable qview2,
tuf_operator_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'GREAT BRITAIN') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.tufNpdidTuf) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Great_Britain' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_operator_hst qview1,
facility_moveable qview2,
facility_fixed qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'GREAT BRITAIN') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Great_Britain' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_operator_hst qview1,
facility_moveable qview2,
facility_moveable qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'GREAT BRITAIN') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Panama' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_operator_hst qview1,
facility_moveable qview2,
tuf_owner_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Panama') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.tufNpdidTuf) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Panama' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_operator_hst qview1,
facility_moveable qview2,
tuf_operator_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Panama') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.tufNpdidTuf) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Panama' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_operator_hst qview1,
facility_moveable qview2,
facility_fixed qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Panama') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Panama' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_operator_hst qview1,
facility_moveable qview2,
facility_moveable qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Panama') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Liberia' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_operator_hst qview1,
facility_moveable qview2,
tuf_owner_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Liberia') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.tufNpdidTuf) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Liberia' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_operator_hst qview1,
facility_moveable qview2,
tuf_operator_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Liberia') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.tufNpdidTuf) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Liberia' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_operator_hst qview1,
facility_moveable qview2,
facility_fixed qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Liberia') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Liberia' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_operator_hst qview1,
facility_moveable qview2,
facility_moveable qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Liberia') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Russia' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_operator_hst qview1,
facility_moveable qview2,
tuf_owner_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Russian federation') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.tufNpdidTuf) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Russia' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_operator_hst qview1,
facility_moveable qview2,
tuf_operator_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Russian federation') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.tufNpdidTuf) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Russia' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_operator_hst qview1,
facility_moveable qview2,
facility_fixed qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Russian federation') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Russia' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_operator_hst qview1,
facility_moveable qview2,
facility_moveable qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Russian federation') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/The_Bahamas' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_operator_hst qview1,
facility_moveable qview2,
tuf_owner_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Bahamas') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.tufNpdidTuf) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/The_Bahamas' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_operator_hst qview1,
facility_moveable qview2,
tuf_operator_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Bahamas') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.tufNpdidTuf) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/The_Bahamas' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_operator_hst qview1,
facility_moveable qview2,
facility_fixed qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Bahamas') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/The_Bahamas' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_operator_hst qview1,
facility_moveable qview2,
facility_moveable qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Bahamas') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Marshall_Islands' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_operator_hst qview1,
facility_moveable qview2,
tuf_owner_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Marshall islands') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.tufNpdidTuf) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Marshall_Islands' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_operator_hst qview1,
facility_moveable qview2,
tuf_operator_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Marshall islands') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.tufNpdidTuf) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Marshall_Islands' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_operator_hst qview1,
facility_moveable qview2,
facility_fixed qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Marshall islands') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Marshall_Islands' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_operator_hst qview1,
facility_moveable qview2,
facility_moveable qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Marshall islands') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/China' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_operator_hst qview1,
facility_moveable qview2,
tuf_owner_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'China') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.tufNpdidTuf) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/China' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_operator_hst qview1,
facility_moveable qview2,
tuf_operator_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'China') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.tufNpdidTuf) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/China' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_operator_hst qview1,
facility_moveable qview2,
facility_fixed qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'China') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/China' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_operator_hst qview1,
facility_moveable qview2,
facility_moveable qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'China') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Norway' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_operator_hst qview1,
facility_moveable qview2,
tuf_owner_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'NORWAY') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.tufNpdidTuf) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Norway' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_operator_hst qview1,
facility_moveable qview2,
tuf_operator_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'NORWAY') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.tufNpdidTuf) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Norway' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_operator_hst qview1,
facility_moveable qview2,
facility_fixed qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'NORWAY') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Norway' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_operator_hst qview1,
facility_moveable qview2,
facility_moveable qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'NORWAY') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Denmark' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_operator_hst qview1,
facility_moveable qview2,
tuf_owner_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Denmark') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.tufNpdidTuf) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Denmark' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_operator_hst qview1,
facility_moveable qview2,
tuf_operator_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Denmark') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.tufNpdidTuf) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Denmark' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_operator_hst qview1,
facility_moveable qview2,
facility_fixed qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Denmark') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.tufName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Denmark' AS country, 
   qview1.tufNpdidTuf  AS id
 FROM 
tuf_operator_hst qview1,
facility_moveable qview2,
facility_moveable qview3,
wellbore_development_all qview4
WHERE 
qview1.tufNpdidTuf IS NOT NULL AND
qview1.tufName IS NOT NULL AND
(qview2.fclNationName = 'Denmark') AND
(qview1.tufNpdidTuf = qview2.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview3.fclNpdidFacility) AND
(qview1.tufNpdidTuf = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.tufNpdidTuf > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Singapore' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_moveable qview1,
facility_moveable qview2,
tuf_owner_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Singapore') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.tufNpdidTuf) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Singapore' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_moveable qview1,
facility_moveable qview2,
tuf_operator_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Singapore') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.tufNpdidTuf) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Singapore' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_moveable qview1,
facility_moveable qview2,
facility_fixed qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Singapore') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Singapore' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_moveable qview1,
facility_moveable qview2,
facility_moveable qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Singapore') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Great_Britain' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_moveable qview1,
facility_moveable qview2,
tuf_owner_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'GREAT BRITAIN') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.tufNpdidTuf) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Great_Britain' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_moveable qview1,
facility_moveable qview2,
tuf_operator_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'GREAT BRITAIN') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.tufNpdidTuf) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Great_Britain' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_moveable qview1,
facility_moveable qview2,
facility_fixed qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'GREAT BRITAIN') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Great_Britain' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_moveable qview1,
facility_moveable qview2,
facility_moveable qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'GREAT BRITAIN') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Panama' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_moveable qview1,
facility_moveable qview2,
tuf_owner_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Panama') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.tufNpdidTuf) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Panama' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_moveable qview1,
facility_moveable qview2,
tuf_operator_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Panama') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.tufNpdidTuf) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Panama' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_moveable qview1,
facility_moveable qview2,
facility_fixed qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Panama') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Panama' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_moveable qview1,
facility_moveable qview2,
facility_moveable qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Panama') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Liberia' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_moveable qview1,
facility_moveable qview2,
tuf_owner_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Liberia') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.tufNpdidTuf) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Liberia' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_moveable qview1,
facility_moveable qview2,
tuf_operator_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Liberia') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.tufNpdidTuf) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Liberia' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_moveable qview1,
facility_moveable qview2,
facility_fixed qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Liberia') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Liberia' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_moveable qview1,
facility_moveable qview2,
facility_moveable qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Liberia') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Russia' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_moveable qview1,
facility_moveable qview2,
tuf_owner_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Russian federation') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.tufNpdidTuf) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Russia' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_moveable qview1,
facility_moveable qview2,
tuf_operator_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Russian federation') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.tufNpdidTuf) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Russia' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_moveable qview1,
facility_moveable qview2,
facility_fixed qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Russian federation') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Russia' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_moveable qview1,
facility_moveable qview2,
facility_moveable qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Russian federation') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/The_Bahamas' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_moveable qview1,
facility_moveable qview2,
tuf_owner_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Bahamas') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.tufNpdidTuf) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/The_Bahamas' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_moveable qview1,
facility_moveable qview2,
tuf_operator_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Bahamas') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.tufNpdidTuf) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/The_Bahamas' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_moveable qview1,
facility_moveable qview2,
facility_fixed qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Bahamas') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/The_Bahamas' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_moveable qview1,
facility_moveable qview2,
facility_moveable qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Bahamas') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Marshall_Islands' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_moveable qview1,
facility_moveable qview2,
tuf_owner_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Marshall islands') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.tufNpdidTuf) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Marshall_Islands' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_moveable qview1,
facility_moveable qview2,
tuf_operator_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Marshall islands') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.tufNpdidTuf) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Marshall_Islands' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_moveable qview1,
facility_moveable qview2,
facility_fixed qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Marshall islands') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Marshall_Islands' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_moveable qview1,
facility_moveable qview2,
facility_moveable qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Marshall islands') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/China' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_moveable qview1,
facility_moveable qview2,
tuf_owner_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'China') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.tufNpdidTuf) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/China' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_moveable qview1,
facility_moveable qview2,
tuf_operator_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'China') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.tufNpdidTuf) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/China' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_moveable qview1,
facility_moveable qview2,
facility_fixed qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'China') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/China' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_moveable qview1,
facility_moveable qview2,
facility_moveable qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'China') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Norway' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_moveable qview1,
facility_moveable qview2,
tuf_owner_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'NORWAY') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.tufNpdidTuf) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Norway' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_moveable qview1,
facility_moveable qview2,
tuf_operator_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'NORWAY') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.tufNpdidTuf) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Norway' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_moveable qview1,
facility_moveable qview2,
facility_fixed qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'NORWAY') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Norway' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_moveable qview1,
facility_moveable qview2,
facility_moveable qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'NORWAY') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Denmark' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_moveable qview1,
facility_moveable qview2,
tuf_owner_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Denmark') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.tufNpdidTuf) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Denmark' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_moveable qview1,
facility_moveable qview2,
tuf_operator_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Denmark') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.tufNpdidTuf) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Denmark' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_moveable qview1,
facility_moveable qview2,
facility_fixed qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Denmark') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Denmark' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_moveable qview1,
facility_moveable qview2,
facility_moveable qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Denmark') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Singapore' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_fixed qview1,
facility_moveable qview2,
tuf_owner_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Singapore') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.tufNpdidTuf) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Singapore' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_fixed qview1,
facility_moveable qview2,
tuf_operator_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Singapore') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.tufNpdidTuf) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Singapore' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_fixed qview1,
facility_moveable qview2,
facility_fixed qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Singapore') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Singapore' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_fixed qview1,
facility_moveable qview2,
facility_moveable qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Singapore') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Great_Britain' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_fixed qview1,
facility_moveable qview2,
tuf_owner_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'GREAT BRITAIN') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.tufNpdidTuf) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Great_Britain' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_fixed qview1,
facility_moveable qview2,
tuf_operator_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'GREAT BRITAIN') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.tufNpdidTuf) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Great_Britain' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_fixed qview1,
facility_moveable qview2,
facility_fixed qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'GREAT BRITAIN') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Great_Britain' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_fixed qview1,
facility_moveable qview2,
facility_moveable qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'GREAT BRITAIN') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Panama' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_fixed qview1,
facility_moveable qview2,
tuf_owner_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Panama') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.tufNpdidTuf) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Panama' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_fixed qview1,
facility_moveable qview2,
tuf_operator_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Panama') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.tufNpdidTuf) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Panama' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_fixed qview1,
facility_moveable qview2,
facility_fixed qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Panama') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Panama' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_fixed qview1,
facility_moveable qview2,
facility_moveable qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Panama') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Liberia' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_fixed qview1,
facility_moveable qview2,
tuf_owner_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Liberia') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.tufNpdidTuf) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Liberia' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_fixed qview1,
facility_moveable qview2,
tuf_operator_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Liberia') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.tufNpdidTuf) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Liberia' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_fixed qview1,
facility_moveable qview2,
facility_fixed qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Liberia') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Liberia' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_fixed qview1,
facility_moveable qview2,
facility_moveable qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Liberia') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Russia' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_fixed qview1,
facility_moveable qview2,
tuf_owner_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Russian federation') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.tufNpdidTuf) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Russia' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_fixed qview1,
facility_moveable qview2,
tuf_operator_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Russian federation') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.tufNpdidTuf) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Russia' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_fixed qview1,
facility_moveable qview2,
facility_fixed qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Russian federation') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Russia' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_fixed qview1,
facility_moveable qview2,
facility_moveable qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Russian federation') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/The_Bahamas' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_fixed qview1,
facility_moveable qview2,
tuf_owner_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Bahamas') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.tufNpdidTuf) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/The_Bahamas' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_fixed qview1,
facility_moveable qview2,
tuf_operator_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Bahamas') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.tufNpdidTuf) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/The_Bahamas' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_fixed qview1,
facility_moveable qview2,
facility_fixed qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Bahamas') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/The_Bahamas' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_fixed qview1,
facility_moveable qview2,
facility_moveable qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Bahamas') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Marshall_Islands' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_fixed qview1,
facility_moveable qview2,
tuf_owner_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Marshall islands') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.tufNpdidTuf) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Marshall_Islands' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_fixed qview1,
facility_moveable qview2,
tuf_operator_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Marshall islands') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.tufNpdidTuf) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Marshall_Islands' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_fixed qview1,
facility_moveable qview2,
facility_fixed qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Marshall islands') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Marshall_Islands' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_fixed qview1,
facility_moveable qview2,
facility_moveable qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Marshall islands') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/China' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_fixed qview1,
facility_moveable qview2,
tuf_owner_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'China') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.tufNpdidTuf) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/China' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_fixed qview1,
facility_moveable qview2,
tuf_operator_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'China') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.tufNpdidTuf) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/China' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_fixed qview1,
facility_moveable qview2,
facility_fixed qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'China') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/China' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_fixed qview1,
facility_moveable qview2,
facility_moveable qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'China') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Norway' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_fixed qview1,
facility_moveable qview2,
tuf_owner_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'NORWAY') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.tufNpdidTuf) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Norway' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_fixed qview1,
facility_moveable qview2,
tuf_operator_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'NORWAY') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.tufNpdidTuf) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Norway' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_fixed qview1,
facility_moveable qview2,
facility_fixed qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'NORWAY') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Norway' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_fixed qview1,
facility_moveable qview2,
facility_moveable qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'NORWAY') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Denmark' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_fixed qview1,
facility_moveable qview2,
tuf_owner_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Denmark') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.tufNpdidTuf) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Denmark' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_fixed qview1,
facility_moveable qview2,
tuf_operator_hst qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Denmark') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.tufNpdidTuf) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Denmark' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_fixed qview1,
facility_moveable qview2,
facility_fixed qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Denmark') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
UNION
SELECT 
 qview1.fclName AS facility, 
   qview4.wlbNpdidWellbore  AS w, 
   'http://dbpedia.org/resource/Denmark' AS country, 
   qview1.fclNpdidFacility  AS id
 FROM 
facility_fixed qview1,
facility_moveable qview2,
facility_moveable qview3,
wellbore_development_all qview4
WHERE 
qview1.fclNpdidFacility IS NOT NULL AND
qview1.fclName IS NOT NULL AND
(qview2.fclNationName = 'Denmark') AND
(qview1.fclNpdidFacility = qview2.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview3.fclNpdidFacility) AND
(qview1.fclNpdidFacility = qview4.fclNpdidFacilityProducing) AND
qview4.wlbNpdidWellbore IS NOT NULL AND
(qview1.fclNpdidFacility > 0)
) SUB_QVIEW ) f1,
(SELECT *
FROM (
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_exploration_all qview1,
wellbore_development_all qview2,
wellbore_exploration_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_exploration_all qview1,
wellbore_development_all qview2,
wellbore_exploration_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_exploration_all qview1,
wellbore_development_all qview2,
wellbore_shallow_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_exploration_all qview1,
wellbore_development_all qview2,
wellbore_shallow_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_exploration_all qview1,
wellbore_development_all qview2,
wellbore_development_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_exploration_all qview1,
wellbore_development_all qview2,
wellbore_development_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_exploration_all qview1,
wellbore_exploration_all qview2,
wellbore_exploration_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_exploration_all qview1,
wellbore_exploration_all qview2,
wellbore_exploration_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_exploration_all qview1,
wellbore_exploration_all qview2,
wellbore_shallow_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_exploration_all qview1,
wellbore_exploration_all qview2,
wellbore_shallow_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_exploration_all qview1,
wellbore_exploration_all qview2,
wellbore_development_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_exploration_all qview1,
wellbore_exploration_all qview2,
wellbore_development_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_exploration_all qview1,
wellbore_shallow_all qview2,
wellbore_exploration_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_exploration_all qview1,
wellbore_shallow_all qview2,
wellbore_exploration_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview2.wlbCompletionYear AS year, 
   qview3.cmpLongName AS company
 FROM 
wellbore_exploration_all qview1,
wellbore_shallow_all qview2,
company qview3,
wellbore_exploration_all qview4,
company qview5
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
qview2.wlbCompletionYear IS NOT NULL AND
qview3.cmpNpdidCompany IS NOT NULL AND
qview3.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview4.wlbNpdidWellbore) AND
(qview4.wlbDrillingOperator = qview5.cmpLongName) AND
(qview3.cmpNpdidCompany = qview5.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview2.wlbCompletionYear AS year, 
   qview3.cmpLongName AS company
 FROM 
wellbore_exploration_all qview1,
wellbore_shallow_all qview2,
company qview3,
wellbore_development_all qview4,
company qview5
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
qview2.wlbCompletionYear IS NOT NULL AND
qview3.cmpNpdidCompany IS NOT NULL AND
qview3.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview4.wlbNpdidWellbore) AND
(qview4.wlbDrillingOperator = qview5.cmpLongName) AND
(qview3.cmpNpdidCompany = qview5.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_exploration_all qview1,
wellbore_shallow_all qview2,
wellbore_development_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_exploration_all qview1,
wellbore_shallow_all qview2,
wellbore_development_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_exploration_all qview1,
wellbore_npdid_overview qview2,
wellbore_exploration_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_exploration_all qview1,
wellbore_npdid_overview qview2,
wellbore_exploration_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_exploration_all qview1,
wellbore_npdid_overview qview2,
wellbore_shallow_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_exploration_all qview1,
wellbore_npdid_overview qview2,
wellbore_shallow_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_exploration_all qview1,
wellbore_npdid_overview qview2,
wellbore_development_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_exploration_all qview1,
wellbore_npdid_overview qview2,
wellbore_development_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_development_all qview1,
wellbore_development_all qview2,
wellbore_exploration_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_development_all qview1,
wellbore_development_all qview2,
wellbore_exploration_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_development_all qview1,
wellbore_development_all qview2,
wellbore_shallow_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_development_all qview1,
wellbore_development_all qview2,
wellbore_shallow_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_development_all qview1,
wellbore_development_all qview2,
wellbore_development_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_development_all qview1,
wellbore_development_all qview2,
wellbore_development_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_development_all qview1,
wellbore_exploration_all qview2,
wellbore_exploration_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_development_all qview1,
wellbore_exploration_all qview2,
wellbore_exploration_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_development_all qview1,
wellbore_exploration_all qview2,
wellbore_shallow_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_development_all qview1,
wellbore_exploration_all qview2,
wellbore_shallow_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_development_all qview1,
wellbore_exploration_all qview2,
wellbore_development_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_development_all qview1,
wellbore_exploration_all qview2,
wellbore_development_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_development_all qview1,
wellbore_shallow_all qview2,
wellbore_exploration_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_development_all qview1,
wellbore_shallow_all qview2,
wellbore_exploration_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview2.wlbCompletionYear AS year, 
   qview3.cmpLongName AS company
 FROM 
wellbore_development_all qview1,
wellbore_shallow_all qview2,
company qview3,
wellbore_exploration_all qview4,
company qview5
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
qview2.wlbCompletionYear IS NOT NULL AND
qview3.cmpNpdidCompany IS NOT NULL AND
qview3.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview4.wlbNpdidWellbore) AND
(qview4.wlbDrillingOperator = qview5.cmpLongName) AND
(qview3.cmpNpdidCompany = qview5.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview2.wlbCompletionYear AS year, 
   qview3.cmpLongName AS company
 FROM 
wellbore_development_all qview1,
wellbore_shallow_all qview2,
company qview3,
wellbore_development_all qview4,
company qview5
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
qview2.wlbCompletionYear IS NOT NULL AND
qview3.cmpNpdidCompany IS NOT NULL AND
qview3.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview4.wlbNpdidWellbore) AND
(qview4.wlbDrillingOperator = qview5.cmpLongName) AND
(qview3.cmpNpdidCompany = qview5.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_development_all qview1,
wellbore_shallow_all qview2,
wellbore_development_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_development_all qview1,
wellbore_shallow_all qview2,
wellbore_development_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_development_all qview1,
wellbore_npdid_overview qview2,
wellbore_exploration_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_development_all qview1,
wellbore_npdid_overview qview2,
wellbore_exploration_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_development_all qview1,
wellbore_npdid_overview qview2,
wellbore_shallow_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_development_all qview1,
wellbore_npdid_overview qview2,
wellbore_shallow_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_development_all qview1,
wellbore_npdid_overview qview2,
wellbore_development_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_development_all qview1,
wellbore_npdid_overview qview2,
wellbore_development_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_core qview1,
wellbore_development_all qview2,
wellbore_exploration_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_core qview1,
wellbore_development_all qview2,
wellbore_exploration_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_core qview1,
wellbore_development_all qview2,
wellbore_shallow_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_core qview1,
wellbore_development_all qview2,
wellbore_shallow_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_core qview1,
wellbore_development_all qview2,
wellbore_development_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_core qview1,
wellbore_development_all qview2,
wellbore_development_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_core qview1,
wellbore_exploration_all qview2,
wellbore_exploration_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_core qview1,
wellbore_exploration_all qview2,
wellbore_exploration_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_core qview1,
wellbore_exploration_all qview2,
wellbore_shallow_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_core qview1,
wellbore_exploration_all qview2,
wellbore_shallow_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_core qview1,
wellbore_exploration_all qview2,
wellbore_development_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_core qview1,
wellbore_exploration_all qview2,
wellbore_development_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_core qview1,
wellbore_shallow_all qview2,
wellbore_exploration_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_core qview1,
wellbore_shallow_all qview2,
wellbore_exploration_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview2.wlbCompletionYear AS year, 
   qview3.cmpLongName AS company
 FROM 
wellbore_core qview1,
wellbore_shallow_all qview2,
company qview3,
wellbore_exploration_all qview4,
company qview5
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
qview2.wlbCompletionYear IS NOT NULL AND
qview3.cmpNpdidCompany IS NOT NULL AND
qview3.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview4.wlbNpdidWellbore) AND
(qview4.wlbDrillingOperator = qview5.cmpLongName) AND
(qview3.cmpNpdidCompany = qview5.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview2.wlbCompletionYear AS year, 
   qview3.cmpLongName AS company
 FROM 
wellbore_core qview1,
wellbore_shallow_all qview2,
company qview3,
wellbore_development_all qview4,
company qview5
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
qview2.wlbCompletionYear IS NOT NULL AND
qview3.cmpNpdidCompany IS NOT NULL AND
qview3.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview4.wlbNpdidWellbore) AND
(qview4.wlbDrillingOperator = qview5.cmpLongName) AND
(qview3.cmpNpdidCompany = qview5.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_core qview1,
wellbore_shallow_all qview2,
wellbore_development_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_core qview1,
wellbore_shallow_all qview2,
wellbore_development_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_core qview1,
wellbore_npdid_overview qview2,
wellbore_exploration_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_core qview1,
wellbore_npdid_overview qview2,
wellbore_exploration_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_core qview1,
wellbore_npdid_overview qview2,
wellbore_shallow_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_core qview1,
wellbore_npdid_overview qview2,
wellbore_shallow_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_core qview1,
wellbore_npdid_overview qview2,
wellbore_development_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_core qview1,
wellbore_npdid_overview qview2,
wellbore_development_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellboreReclass  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_exploration_all qview1,
wellbore_development_all qview2,
wellbore_exploration_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellboreReclass IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellboreReclass  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_exploration_all qview1,
wellbore_development_all qview2,
wellbore_exploration_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellboreReclass IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellboreReclass  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_exploration_all qview1,
wellbore_development_all qview2,
wellbore_shallow_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellboreReclass IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellboreReclass  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_exploration_all qview1,
wellbore_development_all qview2,
wellbore_shallow_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellboreReclass IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellboreReclass  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_exploration_all qview1,
wellbore_development_all qview2,
wellbore_development_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellboreReclass IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellboreReclass  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_exploration_all qview1,
wellbore_development_all qview2,
wellbore_development_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellboreReclass IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellboreReclass  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_exploration_all qview1,
wellbore_exploration_all qview2,
wellbore_exploration_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellboreReclass IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellboreReclass  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_exploration_all qview1,
wellbore_exploration_all qview2,
wellbore_exploration_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellboreReclass IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellboreReclass  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_exploration_all qview1,
wellbore_exploration_all qview2,
wellbore_shallow_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellboreReclass IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellboreReclass  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_exploration_all qview1,
wellbore_exploration_all qview2,
wellbore_shallow_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellboreReclass IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellboreReclass  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_exploration_all qview1,
wellbore_exploration_all qview2,
wellbore_development_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellboreReclass IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellboreReclass  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_exploration_all qview1,
wellbore_exploration_all qview2,
wellbore_development_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellboreReclass IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellboreReclass  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_exploration_all qview1,
wellbore_shallow_all qview2,
wellbore_exploration_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellboreReclass IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellboreReclass  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_exploration_all qview1,
wellbore_shallow_all qview2,
wellbore_exploration_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellboreReclass IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellboreReclass  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview2.wlbCompletionYear AS year, 
   qview3.cmpLongName AS company
 FROM 
wellbore_exploration_all qview1,
wellbore_shallow_all qview2,
company qview3,
wellbore_exploration_all qview4,
company qview5
WHERE 
qview1.wlbNpdidWellboreReclass IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
qview2.wlbCompletionYear IS NOT NULL AND
qview3.cmpNpdidCompany IS NOT NULL AND
qview3.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview4.wlbNpdidWellbore) AND
(qview4.wlbDrillingOperator = qview5.cmpLongName) AND
(qview3.cmpNpdidCompany = qview5.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellboreReclass  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview2.wlbCompletionYear AS year, 
   qview3.cmpLongName AS company
 FROM 
wellbore_exploration_all qview1,
wellbore_shallow_all qview2,
company qview3,
wellbore_development_all qview4,
company qview5
WHERE 
qview1.wlbNpdidWellboreReclass IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
qview2.wlbCompletionYear IS NOT NULL AND
qview3.cmpNpdidCompany IS NOT NULL AND
qview3.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview4.wlbNpdidWellbore) AND
(qview4.wlbDrillingOperator = qview5.cmpLongName) AND
(qview3.cmpNpdidCompany = qview5.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellboreReclass  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_exploration_all qview1,
wellbore_shallow_all qview2,
wellbore_development_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellboreReclass IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellboreReclass  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_exploration_all qview1,
wellbore_shallow_all qview2,
wellbore_development_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellboreReclass IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellboreReclass  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_exploration_all qview1,
wellbore_npdid_overview qview2,
wellbore_exploration_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellboreReclass IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellboreReclass  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_exploration_all qview1,
wellbore_npdid_overview qview2,
wellbore_exploration_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellboreReclass IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellboreReclass  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_exploration_all qview1,
wellbore_npdid_overview qview2,
wellbore_shallow_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellboreReclass IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellboreReclass  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_exploration_all qview1,
wellbore_npdid_overview qview2,
wellbore_shallow_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellboreReclass IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellboreReclass  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_exploration_all qview1,
wellbore_npdid_overview qview2,
wellbore_development_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellboreReclass IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellboreReclass  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_exploration_all qview1,
wellbore_npdid_overview qview2,
wellbore_development_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellboreReclass IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellboreReclass  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_development_all qview1,
wellbore_development_all qview2,
wellbore_exploration_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellboreReclass IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellboreReclass  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_development_all qview1,
wellbore_development_all qview2,
wellbore_exploration_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellboreReclass IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellboreReclass  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_development_all qview1,
wellbore_development_all qview2,
wellbore_shallow_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellboreReclass IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellboreReclass  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_development_all qview1,
wellbore_development_all qview2,
wellbore_shallow_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellboreReclass IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellboreReclass  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_development_all qview1,
wellbore_development_all qview2,
wellbore_development_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellboreReclass IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellboreReclass  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_development_all qview1,
wellbore_development_all qview2,
wellbore_development_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellboreReclass IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellboreReclass  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_development_all qview1,
wellbore_exploration_all qview2,
wellbore_exploration_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellboreReclass IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellboreReclass  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_development_all qview1,
wellbore_exploration_all qview2,
wellbore_exploration_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellboreReclass IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellboreReclass  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_development_all qview1,
wellbore_exploration_all qview2,
wellbore_shallow_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellboreReclass IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellboreReclass  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_development_all qview1,
wellbore_exploration_all qview2,
wellbore_shallow_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellboreReclass IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellboreReclass  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_development_all qview1,
wellbore_exploration_all qview2,
wellbore_development_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellboreReclass IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellboreReclass  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_development_all qview1,
wellbore_exploration_all qview2,
wellbore_development_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellboreReclass IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellboreReclass  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_development_all qview1,
wellbore_shallow_all qview2,
wellbore_exploration_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellboreReclass IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellboreReclass  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_development_all qview1,
wellbore_shallow_all qview2,
wellbore_exploration_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellboreReclass IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellboreReclass  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview2.wlbCompletionYear AS year, 
   qview3.cmpLongName AS company
 FROM 
wellbore_development_all qview1,
wellbore_shallow_all qview2,
company qview3,
wellbore_exploration_all qview4,
company qview5
WHERE 
qview1.wlbNpdidWellboreReclass IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
qview2.wlbCompletionYear IS NOT NULL AND
qview3.cmpNpdidCompany IS NOT NULL AND
qview3.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview4.wlbNpdidWellbore) AND
(qview4.wlbDrillingOperator = qview5.cmpLongName) AND
(qview3.cmpNpdidCompany = qview5.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellboreReclass  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview2.wlbCompletionYear AS year, 
   qview3.cmpLongName AS company
 FROM 
wellbore_development_all qview1,
wellbore_shallow_all qview2,
company qview3,
wellbore_development_all qview4,
company qview5
WHERE 
qview1.wlbNpdidWellboreReclass IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
qview2.wlbCompletionYear IS NOT NULL AND
qview3.cmpNpdidCompany IS NOT NULL AND
qview3.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview4.wlbNpdidWellbore) AND
(qview4.wlbDrillingOperator = qview5.cmpLongName) AND
(qview3.cmpNpdidCompany = qview5.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellboreReclass  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_development_all qview1,
wellbore_shallow_all qview2,
wellbore_development_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellboreReclass IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellboreReclass  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_development_all qview1,
wellbore_shallow_all qview2,
wellbore_development_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellboreReclass IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellboreReclass  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_development_all qview1,
wellbore_npdid_overview qview2,
wellbore_exploration_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellboreReclass IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellboreReclass  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_development_all qview1,
wellbore_npdid_overview qview2,
wellbore_exploration_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellboreReclass IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellboreReclass  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_development_all qview1,
wellbore_npdid_overview qview2,
wellbore_shallow_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellboreReclass IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellboreReclass  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_development_all qview1,
wellbore_npdid_overview qview2,
wellbore_shallow_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellboreReclass IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellboreReclass  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_development_all qview1,
wellbore_npdid_overview qview2,
wellbore_development_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellboreReclass IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellboreReclass  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_development_all qview1,
wellbore_npdid_overview qview2,
wellbore_development_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellboreReclass IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellboreReclass = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_shallow_all qview1,
wellbore_development_all qview2,
wellbore_exploration_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_shallow_all qview1,
wellbore_development_all qview2,
wellbore_exploration_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview1.wlbCompletionYear AS year, 
   qview3.cmpLongName AS company
 FROM 
wellbore_shallow_all qview1,
wellbore_development_all qview2,
company qview3,
wellbore_exploration_all qview4,
company qview5
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
qview1.wlbCompletionYear IS NOT NULL AND
qview3.cmpNpdidCompany IS NOT NULL AND
qview3.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview4.wlbNpdidWellbore) AND
(qview4.wlbDrillingOperator = qview5.cmpLongName) AND
(qview3.cmpNpdidCompany = qview5.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview1.wlbCompletionYear AS year, 
   qview3.cmpLongName AS company
 FROM 
wellbore_shallow_all qview1,
wellbore_development_all qview2,
company qview3,
wellbore_development_all qview4,
company qview5
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
qview1.wlbCompletionYear IS NOT NULL AND
qview3.cmpNpdidCompany IS NOT NULL AND
qview3.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview4.wlbNpdidWellbore) AND
(qview4.wlbDrillingOperator = qview5.cmpLongName) AND
(qview3.cmpNpdidCompany = qview5.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_shallow_all qview1,
wellbore_development_all qview2,
wellbore_development_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_shallow_all qview1,
wellbore_development_all qview2,
wellbore_development_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_shallow_all qview1,
wellbore_exploration_all qview2,
wellbore_exploration_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_shallow_all qview1,
wellbore_exploration_all qview2,
wellbore_exploration_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview1.wlbCompletionYear AS year, 
   qview3.cmpLongName AS company
 FROM 
wellbore_shallow_all qview1,
wellbore_exploration_all qview2,
company qview3,
wellbore_exploration_all qview4,
company qview5
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
qview1.wlbCompletionYear IS NOT NULL AND
qview3.cmpNpdidCompany IS NOT NULL AND
qview3.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview4.wlbNpdidWellbore) AND
(qview4.wlbDrillingOperator = qview5.cmpLongName) AND
(qview3.cmpNpdidCompany = qview5.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview1.wlbCompletionYear AS year, 
   qview3.cmpLongName AS company
 FROM 
wellbore_shallow_all qview1,
wellbore_exploration_all qview2,
company qview3,
wellbore_development_all qview4,
company qview5
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
qview1.wlbCompletionYear IS NOT NULL AND
qview3.cmpNpdidCompany IS NOT NULL AND
qview3.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview4.wlbNpdidWellbore) AND
(qview4.wlbDrillingOperator = qview5.cmpLongName) AND
(qview3.cmpNpdidCompany = qview5.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_shallow_all qview1,
wellbore_exploration_all qview2,
wellbore_development_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_shallow_all qview1,
wellbore_exploration_all qview2,
wellbore_development_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview1.wlbWellboreName AS wellbore, 
   qview2.wlbCompletionYear AS year, 
   qview3.cmpLongName AS company
 FROM 
wellbore_shallow_all qview1,
wellbore_exploration_all qview2,
company qview3,
wellbore_exploration_all qview4,
company qview5
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
qview1.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbCompletionYear IS NOT NULL AND
qview3.cmpNpdidCompany IS NOT NULL AND
qview3.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview4.wlbNpdidWellbore) AND
(qview4.wlbDrillingOperator = qview5.cmpLongName) AND
(qview3.cmpNpdidCompany = qview5.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview1.wlbWellboreName AS wellbore, 
   qview2.wlbCompletionYear AS year, 
   qview3.cmpLongName AS company
 FROM 
wellbore_shallow_all qview1,
wellbore_exploration_all qview2,
company qview3,
wellbore_development_all qview4,
company qview5
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
qview1.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbCompletionYear IS NOT NULL AND
qview3.cmpNpdidCompany IS NOT NULL AND
qview3.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview4.wlbNpdidWellbore) AND
(qview4.wlbDrillingOperator = qview5.cmpLongName) AND
(qview3.cmpNpdidCompany = qview5.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview1.wlbWellboreName AS wellbore, 
   qview1.wlbCompletionYear AS year, 
   qview2.cmpLongName AS company
 FROM 
wellbore_shallow_all qview1,
company qview2,
wellbore_exploration_all qview3,
company qview4
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
qview1.wlbWellboreName IS NOT NULL AND
qview1.wlbCompletionYear IS NOT NULL AND
qview2.cmpNpdidCompany IS NOT NULL AND
qview2.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
(qview3.wlbDrillingOperator = qview4.cmpLongName) AND
(qview2.cmpNpdidCompany = qview4.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview1.wlbWellboreName AS wellbore, 
   qview1.wlbCompletionYear AS year, 
   qview2.cmpLongName AS company
 FROM 
wellbore_shallow_all qview1,
company qview2,
wellbore_development_all qview3,
company qview4
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
qview1.wlbWellboreName IS NOT NULL AND
qview1.wlbCompletionYear IS NOT NULL AND
qview2.cmpNpdidCompany IS NOT NULL AND
qview2.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
(qview3.wlbDrillingOperator = qview4.cmpLongName) AND
(qview2.cmpNpdidCompany = qview4.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview1.wlbWellboreName AS wellbore, 
   qview2.wlbCompletionYear AS year, 
   qview3.cmpLongName AS company
 FROM 
wellbore_shallow_all qview1,
wellbore_development_all qview2,
company qview3,
wellbore_exploration_all qview4,
company qview5
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
qview1.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbCompletionYear IS NOT NULL AND
qview3.cmpNpdidCompany IS NOT NULL AND
qview3.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview4.wlbNpdidWellbore) AND
(qview4.wlbDrillingOperator = qview5.cmpLongName) AND
(qview3.cmpNpdidCompany = qview5.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview1.wlbWellboreName AS wellbore, 
   qview2.wlbCompletionYear AS year, 
   qview3.cmpLongName AS company
 FROM 
wellbore_shallow_all qview1,
wellbore_development_all qview2,
company qview3,
wellbore_development_all qview4,
company qview5
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
qview1.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbCompletionYear IS NOT NULL AND
qview3.cmpNpdidCompany IS NOT NULL AND
qview3.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview4.wlbNpdidWellbore) AND
(qview4.wlbDrillingOperator = qview5.cmpLongName) AND
(qview3.cmpNpdidCompany = qview5.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_shallow_all qview1,
wellbore_npdid_overview qview2,
wellbore_exploration_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_shallow_all qview1,
wellbore_npdid_overview qview2,
wellbore_exploration_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview1.wlbCompletionYear AS year, 
   qview3.cmpLongName AS company
 FROM 
wellbore_shallow_all qview1,
wellbore_npdid_overview qview2,
company qview3,
wellbore_exploration_all qview4,
company qview5
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
qview1.wlbCompletionYear IS NOT NULL AND
qview3.cmpNpdidCompany IS NOT NULL AND
qview3.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview4.wlbNpdidWellbore) AND
(qview4.wlbDrillingOperator = qview5.cmpLongName) AND
(qview3.cmpNpdidCompany = qview5.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview1.wlbCompletionYear AS year, 
   qview3.cmpLongName AS company
 FROM 
wellbore_shallow_all qview1,
wellbore_npdid_overview qview2,
company qview3,
wellbore_development_all qview4,
company qview5
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
qview1.wlbCompletionYear IS NOT NULL AND
qview3.cmpNpdidCompany IS NOT NULL AND
qview3.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview4.wlbNpdidWellbore) AND
(qview4.wlbDrillingOperator = qview5.cmpLongName) AND
(qview3.cmpNpdidCompany = qview5.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_shallow_all qview1,
wellbore_npdid_overview qview2,
wellbore_development_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_shallow_all qview1,
wellbore_npdid_overview qview2,
wellbore_development_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_npdid_overview qview1,
wellbore_development_all qview2,
wellbore_exploration_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_npdid_overview qview1,
wellbore_development_all qview2,
wellbore_exploration_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_npdid_overview qview1,
wellbore_development_all qview2,
wellbore_shallow_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_npdid_overview qview1,
wellbore_development_all qview2,
wellbore_shallow_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_npdid_overview qview1,
wellbore_development_all qview2,
wellbore_development_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_npdid_overview qview1,
wellbore_development_all qview2,
wellbore_development_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_npdid_overview qview1,
wellbore_exploration_all qview2,
wellbore_exploration_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_npdid_overview qview1,
wellbore_exploration_all qview2,
wellbore_exploration_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_npdid_overview qview1,
wellbore_exploration_all qview2,
wellbore_shallow_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_npdid_overview qview1,
wellbore_exploration_all qview2,
wellbore_shallow_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_npdid_overview qview1,
wellbore_exploration_all qview2,
wellbore_development_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_npdid_overview qview1,
wellbore_exploration_all qview2,
wellbore_development_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_npdid_overview qview1,
wellbore_shallow_all qview2,
wellbore_exploration_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_npdid_overview qview1,
wellbore_shallow_all qview2,
wellbore_exploration_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview2.wlbCompletionYear AS year, 
   qview3.cmpLongName AS company
 FROM 
wellbore_npdid_overview qview1,
wellbore_shallow_all qview2,
company qview3,
wellbore_exploration_all qview4,
company qview5
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
qview2.wlbCompletionYear IS NOT NULL AND
qview3.cmpNpdidCompany IS NOT NULL AND
qview3.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview4.wlbNpdidWellbore) AND
(qview4.wlbDrillingOperator = qview5.cmpLongName) AND
(qview3.cmpNpdidCompany = qview5.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview2.wlbCompletionYear AS year, 
   qview3.cmpLongName AS company
 FROM 
wellbore_npdid_overview qview1,
wellbore_shallow_all qview2,
company qview3,
wellbore_development_all qview4,
company qview5
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
qview2.wlbCompletionYear IS NOT NULL AND
qview3.cmpNpdidCompany IS NOT NULL AND
qview3.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview4.wlbNpdidWellbore) AND
(qview4.wlbDrillingOperator = qview5.cmpLongName) AND
(qview3.cmpNpdidCompany = qview5.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_npdid_overview qview1,
wellbore_shallow_all qview2,
wellbore_development_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_npdid_overview qview1,
wellbore_shallow_all qview2,
wellbore_development_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_npdid_overview qview1,
wellbore_npdid_overview qview2,
wellbore_exploration_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_npdid_overview qview1,
wellbore_npdid_overview qview2,
wellbore_exploration_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_npdid_overview qview1,
wellbore_npdid_overview qview2,
wellbore_shallow_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_npdid_overview qview1,
wellbore_npdid_overview qview2,
wellbore_shallow_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_npdid_overview qview1,
wellbore_npdid_overview qview2,
wellbore_development_all qview3,
company qview4,
wellbore_exploration_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
UNION
SELECT 
   qview1.wlbNpdidWellbore  AS w, 
   qview2.wlbWellboreName AS wellbore, 
   qview3.wlbCompletionYear AS year, 
   qview4.cmpLongName AS company
 FROM 
wellbore_npdid_overview qview1,
wellbore_npdid_overview qview2,
wellbore_development_all qview3,
company qview4,
wellbore_development_all qview5,
company qview6
WHERE 
qview1.wlbNpdidWellbore IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview2.wlbNpdidWellbore) AND
qview2.wlbWellboreName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview3.wlbNpdidWellbore) AND
qview3.wlbCompletionYear IS NOT NULL AND
qview4.cmpNpdidCompany IS NOT NULL AND
qview4.cmpLongName IS NOT NULL AND
(qview1.wlbNpdidWellbore = qview5.wlbNpdidWellbore) AND
(qview5.wlbDrillingOperator = qview6.cmpLongName) AND
(qview4.cmpNpdidCompany = qview6.cmpNpdidCompany)
) SUB_QVIEW ) f2
WHERE f1.w = f2.w;
