SELECT 'http://sws.ifi.uio.no/data/npd-v2/facility/' || f_1.t0v0 || '' AS f, f_1.t1v0 || '^^http://www.w3.org/2001/XMLSchema#string' AS facility,  AS country, f_1.t3v0 || '^^http://www.w3.org/2001/XMLSchema#integer' AS id, 'http://sws.ifi.uio.no/data/npd-v2/wellbore/' || f_1.t4v0 || '' AS w, f_2.t5v0 || '^^http://www.w3.org/2001/XMLSchema#string' AS wellbore, f_2.t6v0 || '^^http://www.w3.org/2001/XMLSchema#integer' AS year, f_2.t7v0 || '^^http://www.w3.org/2001/XMLSchema#string' AS company
FROM
(SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Singapore' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_owner_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Singapore') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."tufNpdidTuf") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Singapore' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_operator_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Singapore') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."tufNpdidTuf") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Singapore' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_moveable" qview2,
"public"."facility_fixed" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Singapore') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Singapore' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_moveable" qview2,
"public"."facility_moveable" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Singapore') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'GREAT BRITAIN' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_owner_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'GREAT BRITAIN') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."tufNpdidTuf") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'GREAT BRITAIN' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_operator_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'GREAT BRITAIN') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."tufNpdidTuf") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'GREAT BRITAIN' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_moveable" qview2,
"public"."facility_fixed" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'GREAT BRITAIN') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'GREAT BRITAIN' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_moveable" qview2,
"public"."facility_moveable" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'GREAT BRITAIN') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Panama' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_owner_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Panama') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."tufNpdidTuf") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Panama' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_operator_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Panama') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."tufNpdidTuf") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Panama' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_moveable" qview2,
"public"."facility_fixed" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Panama') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Panama' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_moveable" qview2,
"public"."facility_moveable" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Panama') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Liberia' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_owner_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Liberia') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."tufNpdidTuf") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Liberia' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_operator_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Liberia') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."tufNpdidTuf") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Liberia' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_moveable" qview2,
"public"."facility_fixed" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Liberia') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Liberia' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_moveable" qview2,
"public"."facility_moveable" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Liberia') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Russian federation' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_owner_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Russian federation') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."tufNpdidTuf") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Russian federation' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_operator_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Russian federation') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."tufNpdidTuf") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Russian federation' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_moveable" qview2,
"public"."facility_fixed" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Russian federation') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Russian federation' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_moveable" qview2,
"public"."facility_moveable" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Russian federation') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Bahamas' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_owner_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Bahamas') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."tufNpdidTuf") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Bahamas' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_operator_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Bahamas') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."tufNpdidTuf") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Bahamas' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_moveable" qview2,
"public"."facility_fixed" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Bahamas') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Bahamas' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_moveable" qview2,
"public"."facility_moveable" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Bahamas') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Marshall islands' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_owner_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Marshall islands') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."tufNpdidTuf") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Marshall islands' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_operator_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Marshall islands') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."tufNpdidTuf") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Marshall islands' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_moveable" qview2,
"public"."facility_fixed" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Marshall islands') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Marshall islands' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_moveable" qview2,
"public"."facility_moveable" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Marshall islands') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'China' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_owner_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'China') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."tufNpdidTuf") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'China' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_operator_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'China') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."tufNpdidTuf") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'China' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_moveable" qview2,
"public"."facility_fixed" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'China') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'China' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_moveable" qview2,
"public"."facility_moveable" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'China') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'NORWAY' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_owner_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'NORWAY') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."tufNpdidTuf") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'NORWAY' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_operator_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'NORWAY') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."tufNpdidTuf") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'NORWAY' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_moveable" qview2,
"public"."facility_fixed" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'NORWAY') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'NORWAY' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_moveable" qview2,
"public"."facility_moveable" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'NORWAY') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Denmark' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_owner_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Denmark') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."tufNpdidTuf") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Denmark' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_operator_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Denmark') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."tufNpdidTuf") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Denmark' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_moveable" qview2,
"public"."facility_fixed" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Denmark') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Denmark' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_owner_hst" qview1,
"public"."facility_moveable" qview2,
"public"."facility_moveable" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Denmark') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Singapore' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_owner_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Singapore') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."tufNpdidTuf") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Singapore' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_operator_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Singapore') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."tufNpdidTuf") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Singapore' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_moveable" qview2,
"public"."facility_fixed" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Singapore') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Singapore' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_moveable" qview2,
"public"."facility_moveable" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Singapore') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'GREAT BRITAIN' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_owner_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'GREAT BRITAIN') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."tufNpdidTuf") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'GREAT BRITAIN' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_operator_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'GREAT BRITAIN') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."tufNpdidTuf") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'GREAT BRITAIN' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_moveable" qview2,
"public"."facility_fixed" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'GREAT BRITAIN') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'GREAT BRITAIN' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_moveable" qview2,
"public"."facility_moveable" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'GREAT BRITAIN') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Panama' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_owner_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Panama') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."tufNpdidTuf") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Panama' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_operator_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Panama') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."tufNpdidTuf") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Panama' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_moveable" qview2,
"public"."facility_fixed" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Panama') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Panama' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_moveable" qview2,
"public"."facility_moveable" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Panama') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Liberia' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_owner_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Liberia') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."tufNpdidTuf") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Liberia' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_operator_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Liberia') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."tufNpdidTuf") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Liberia' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_moveable" qview2,
"public"."facility_fixed" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Liberia') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Liberia' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_moveable" qview2,
"public"."facility_moveable" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Liberia') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Russian federation' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_owner_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Russian federation') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."tufNpdidTuf") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Russian federation' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_operator_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Russian federation') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."tufNpdidTuf") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Russian federation' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_moveable" qview2,
"public"."facility_fixed" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Russian federation') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Russian federation' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_moveable" qview2,
"public"."facility_moveable" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Russian federation') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Bahamas' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_owner_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Bahamas') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."tufNpdidTuf") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Bahamas' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_operator_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Bahamas') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."tufNpdidTuf") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Bahamas' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_moveable" qview2,
"public"."facility_fixed" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Bahamas') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Bahamas' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_moveable" qview2,
"public"."facility_moveable" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Bahamas') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Marshall islands' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_owner_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Marshall islands') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."tufNpdidTuf") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Marshall islands' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_operator_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Marshall islands') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."tufNpdidTuf") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Marshall islands' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_moveable" qview2,
"public"."facility_fixed" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Marshall islands') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Marshall islands' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_moveable" qview2,
"public"."facility_moveable" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Marshall islands') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'China' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_owner_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'China') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."tufNpdidTuf") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'China' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_operator_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'China') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."tufNpdidTuf") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'China' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_moveable" qview2,
"public"."facility_fixed" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'China') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'China' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_moveable" qview2,
"public"."facility_moveable" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'China') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'NORWAY' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_owner_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'NORWAY') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."tufNpdidTuf") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'NORWAY' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_operator_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'NORWAY') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."tufNpdidTuf") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'NORWAY' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_moveable" qview2,
"public"."facility_fixed" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'NORWAY') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'NORWAY' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_moveable" qview2,
"public"."facility_moveable" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'NORWAY') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Denmark' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_owner_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Denmark') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."tufNpdidTuf") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Denmark' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_operator_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Denmark') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."tufNpdidTuf") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Denmark' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_moveable" qview2,
"public"."facility_fixed" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Denmark') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."tufNpdidTuf" AS t0v0,  qview1."tufName" AS t1v0,  'Denmark' AS t3v0,  qview1."tufNpdidTuf" AS t4v0 FROM 
"public"."tuf_operator_hst" qview1,
"public"."facility_moveable" qview2,
"public"."facility_moveable" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."tufNpdidTuf" IS NOT NULL AND
qview1."tufName" IS NOT NULL AND
(qview2."fclNationName" = 'Denmark') AND
(qview1."tufNpdidTuf" = qview2."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview3."fclNpdidFacility") AND
(qview1."tufNpdidTuf" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."tufNpdidTuf" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Singapore' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_moveable" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_owner_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Singapore') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."tufNpdidTuf") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Singapore' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_moveable" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_operator_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Singapore') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."tufNpdidTuf") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Singapore' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_moveable" qview1,
"public"."facility_moveable" qview2,
"public"."facility_fixed" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Singapore') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Singapore' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_moveable" qview1,
"public"."facility_moveable" qview2,
"public"."facility_moveable" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Singapore') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'GREAT BRITAIN' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_moveable" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_owner_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'GREAT BRITAIN') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."tufNpdidTuf") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'GREAT BRITAIN' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_moveable" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_operator_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'GREAT BRITAIN') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."tufNpdidTuf") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'GREAT BRITAIN' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_moveable" qview1,
"public"."facility_moveable" qview2,
"public"."facility_fixed" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'GREAT BRITAIN') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'GREAT BRITAIN' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_moveable" qview1,
"public"."facility_moveable" qview2,
"public"."facility_moveable" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'GREAT BRITAIN') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Panama' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_moveable" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_owner_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Panama') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."tufNpdidTuf") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Panama' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_moveable" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_operator_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Panama') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."tufNpdidTuf") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Panama' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_moveable" qview1,
"public"."facility_moveable" qview2,
"public"."facility_fixed" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Panama') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Panama' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_moveable" qview1,
"public"."facility_moveable" qview2,
"public"."facility_moveable" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Panama') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Liberia' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_moveable" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_owner_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Liberia') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."tufNpdidTuf") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Liberia' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_moveable" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_operator_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Liberia') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."tufNpdidTuf") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Liberia' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_moveable" qview1,
"public"."facility_moveable" qview2,
"public"."facility_fixed" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Liberia') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Liberia' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_moveable" qview1,
"public"."facility_moveable" qview2,
"public"."facility_moveable" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Liberia') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Russian federation' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_moveable" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_owner_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Russian federation') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."tufNpdidTuf") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Russian federation' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_moveable" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_operator_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Russian federation') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."tufNpdidTuf") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Russian federation' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_moveable" qview1,
"public"."facility_moveable" qview2,
"public"."facility_fixed" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Russian federation') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Russian federation' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_moveable" qview1,
"public"."facility_moveable" qview2,
"public"."facility_moveable" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Russian federation') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Bahamas' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_moveable" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_owner_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Bahamas') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."tufNpdidTuf") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Bahamas' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_moveable" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_operator_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Bahamas') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."tufNpdidTuf") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Bahamas' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_moveable" qview1,
"public"."facility_moveable" qview2,
"public"."facility_fixed" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Bahamas') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Bahamas' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_moveable" qview1,
"public"."facility_moveable" qview2,
"public"."facility_moveable" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Bahamas') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Marshall islands' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_moveable" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_owner_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Marshall islands') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."tufNpdidTuf") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Marshall islands' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_moveable" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_operator_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Marshall islands') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."tufNpdidTuf") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Marshall islands' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_moveable" qview1,
"public"."facility_moveable" qview2,
"public"."facility_fixed" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Marshall islands') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Marshall islands' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_moveable" qview1,
"public"."facility_moveable" qview2,
"public"."facility_moveable" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Marshall islands') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'China' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_moveable" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_owner_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'China') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."tufNpdidTuf") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'China' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_moveable" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_operator_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'China') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."tufNpdidTuf") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'China' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_moveable" qview1,
"public"."facility_moveable" qview2,
"public"."facility_fixed" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'China') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'China' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_moveable" qview1,
"public"."facility_moveable" qview2,
"public"."facility_moveable" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'China') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'NORWAY' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_moveable" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_owner_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'NORWAY') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."tufNpdidTuf") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'NORWAY' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_moveable" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_operator_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'NORWAY') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."tufNpdidTuf") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'NORWAY' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_moveable" qview1,
"public"."facility_moveable" qview2,
"public"."facility_fixed" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'NORWAY') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'NORWAY' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_moveable" qview1,
"public"."facility_moveable" qview2,
"public"."facility_moveable" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'NORWAY') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Denmark' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_moveable" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_owner_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Denmark') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."tufNpdidTuf") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Denmark' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_moveable" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_operator_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Denmark') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."tufNpdidTuf") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Denmark' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_moveable" qview1,
"public"."facility_moveable" qview2,
"public"."facility_fixed" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Denmark') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Denmark' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_moveable" qview1,
"public"."facility_moveable" qview2,
"public"."facility_moveable" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Denmark') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Singapore' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_fixed" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_owner_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Singapore') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."tufNpdidTuf") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Singapore' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_fixed" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_operator_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Singapore') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."tufNpdidTuf") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Singapore' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_fixed" qview1,
"public"."facility_moveable" qview2,
"public"."facility_fixed" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Singapore') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Singapore' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_fixed" qview1,
"public"."facility_moveable" qview2,
"public"."facility_moveable" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Singapore') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'GREAT BRITAIN' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_fixed" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_owner_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'GREAT BRITAIN') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."tufNpdidTuf") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'GREAT BRITAIN' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_fixed" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_operator_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'GREAT BRITAIN') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."tufNpdidTuf") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'GREAT BRITAIN' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_fixed" qview1,
"public"."facility_moveable" qview2,
"public"."facility_fixed" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'GREAT BRITAIN') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'GREAT BRITAIN' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_fixed" qview1,
"public"."facility_moveable" qview2,
"public"."facility_moveable" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'GREAT BRITAIN') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Panama' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_fixed" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_owner_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Panama') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."tufNpdidTuf") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Panama' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_fixed" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_operator_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Panama') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."tufNpdidTuf") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Panama' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_fixed" qview1,
"public"."facility_moveable" qview2,
"public"."facility_fixed" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Panama') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Panama' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_fixed" qview1,
"public"."facility_moveable" qview2,
"public"."facility_moveable" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Panama') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Liberia' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_fixed" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_owner_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Liberia') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."tufNpdidTuf") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Liberia' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_fixed" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_operator_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Liberia') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."tufNpdidTuf") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Liberia' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_fixed" qview1,
"public"."facility_moveable" qview2,
"public"."facility_fixed" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Liberia') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Liberia' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_fixed" qview1,
"public"."facility_moveable" qview2,
"public"."facility_moveable" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Liberia') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Russian federation' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_fixed" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_owner_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Russian federation') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."tufNpdidTuf") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Russian federation' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_fixed" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_operator_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Russian federation') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."tufNpdidTuf") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Russian federation' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_fixed" qview1,
"public"."facility_moveable" qview2,
"public"."facility_fixed" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Russian federation') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Russian federation' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_fixed" qview1,
"public"."facility_moveable" qview2,
"public"."facility_moveable" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Russian federation') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Bahamas' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_fixed" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_owner_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Bahamas') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."tufNpdidTuf") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Bahamas' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_fixed" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_operator_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Bahamas') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."tufNpdidTuf") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Bahamas' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_fixed" qview1,
"public"."facility_moveable" qview2,
"public"."facility_fixed" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Bahamas') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Bahamas' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_fixed" qview1,
"public"."facility_moveable" qview2,
"public"."facility_moveable" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Bahamas') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Marshall islands' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_fixed" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_owner_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Marshall islands') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."tufNpdidTuf") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Marshall islands' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_fixed" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_operator_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Marshall islands') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."tufNpdidTuf") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Marshall islands' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_fixed" qview1,
"public"."facility_moveable" qview2,
"public"."facility_fixed" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Marshall islands') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Marshall islands' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_fixed" qview1,
"public"."facility_moveable" qview2,
"public"."facility_moveable" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Marshall islands') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'China' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_fixed" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_owner_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'China') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."tufNpdidTuf") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'China' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_fixed" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_operator_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'China') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."tufNpdidTuf") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'China' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_fixed" qview1,
"public"."facility_moveable" qview2,
"public"."facility_fixed" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'China') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'China' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_fixed" qview1,
"public"."facility_moveable" qview2,
"public"."facility_moveable" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'China') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'NORWAY' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_fixed" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_owner_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'NORWAY') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."tufNpdidTuf") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'NORWAY' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_fixed" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_operator_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'NORWAY') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."tufNpdidTuf") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'NORWAY' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_fixed" qview1,
"public"."facility_moveable" qview2,
"public"."facility_fixed" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'NORWAY') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'NORWAY' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_fixed" qview1,
"public"."facility_moveable" qview2,
"public"."facility_moveable" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'NORWAY') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Denmark' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_fixed" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_owner_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Denmark') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."tufNpdidTuf") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Denmark' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_fixed" qview1,
"public"."facility_moveable" qview2,
"public"."tuf_operator_hst" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Denmark') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."tufNpdidTuf") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Denmark' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_fixed" qview1,
"public"."facility_moveable" qview2,
"public"."facility_fixed" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Denmark') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)

UNION
SELECT qview1."fclNpdidFacility" AS t0v0,  qview1."fclName" AS t1v0,  'Denmark' AS t3v0,  qview1."fclNpdidFacility" AS t4v0 FROM 
"public"."facility_fixed" qview1,
"public"."facility_moveable" qview2,
"public"."facility_moveable" qview3,
"public"."wellbore_development_all" qview4
WHERE 
qview1."fclNpdidFacility" IS NOT NULL AND
qview1."fclName" IS NOT NULL AND
(qview2."fclNationName" = 'Denmark') AND
(qview1."fclNpdidFacility" = qview2."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview3."fclNpdidFacility") AND
(qview1."fclNpdidFacility" = qview4."fclNpdidFacilityProducing") AND
qview4."wlbNpdidWellbore" IS NOT NULL AND
(qview1."fclNpdidFacility" > 0)
) f_1, (SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_shallow_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_shallow_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview2."wlbCompletionYear" AS t6v0,  qview3."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_shallow_all" qview2,
"public"."company" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."company" qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
qview3."cmpNpdidCompany" IS NOT NULL AND
qview3."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview4."wlbDrillingOperator" = qview5."cmpLongName") AND
(qview3."cmpNpdidCompany" = qview5."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview2."wlbCompletionYear" AS t6v0,  qview3."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_shallow_all" qview2,
"public"."company" qview3,
"public"."wellbore_development_all" qview4,
"public"."company" qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
qview3."cmpNpdidCompany" IS NOT NULL AND
qview3."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview4."wlbDrillingOperator" = qview5."cmpLongName") AND
(qview3."cmpNpdidCompany" = qview5."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_shallow_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_shallow_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_shallow_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_shallow_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview2."wlbCompletionYear" AS t6v0,  qview3."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_shallow_all" qview2,
"public"."company" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."company" qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
qview3."cmpNpdidCompany" IS NOT NULL AND
qview3."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview4."wlbDrillingOperator" = qview5."cmpLongName") AND
(qview3."cmpNpdidCompany" = qview5."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview2."wlbCompletionYear" AS t6v0,  qview3."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_shallow_all" qview2,
"public"."company" qview3,
"public"."wellbore_development_all" qview4,
"public"."company" qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
qview3."cmpNpdidCompany" IS NOT NULL AND
qview3."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview4."wlbDrillingOperator" = qview5."cmpLongName") AND
(qview3."cmpNpdidCompany" = qview5."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_shallow_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_shallow_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_shallow_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_shallow_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview2."wlbCompletionYear" AS t6v0,  qview3."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_shallow_all" qview2,
"public"."company" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."company" qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
qview3."cmpNpdidCompany" IS NOT NULL AND
qview3."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview4."wlbDrillingOperator" = qview5."cmpLongName") AND
(qview3."cmpNpdidCompany" = qview5."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview2."wlbCompletionYear" AS t6v0,  qview3."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_shallow_all" qview2,
"public"."company" qview3,
"public"."wellbore_development_all" qview4,
"public"."company" qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
qview3."cmpNpdidCompany" IS NOT NULL AND
qview3."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview4."wlbDrillingOperator" = qview5."cmpLongName") AND
(qview3."cmpNpdidCompany" = qview5."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_shallow_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_shallow_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_core" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellboreReclass" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellboreReclass" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellboreReclass" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellboreReclass" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellboreReclass" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellboreReclass" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellboreReclass" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellboreReclass" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellboreReclass" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellboreReclass" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellboreReclass" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellboreReclass" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellboreReclass" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellboreReclass" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellboreReclass" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellboreReclass" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellboreReclass" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellboreReclass" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellboreReclass" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellboreReclass" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellboreReclass" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellboreReclass" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellboreReclass" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellboreReclass" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellboreReclass" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_shallow_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellboreReclass" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellboreReclass" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_shallow_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellboreReclass" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellboreReclass" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview2."wlbCompletionYear" AS t6v0,  qview3."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_shallow_all" qview2,
"public"."company" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."company" qview5
WHERE 
qview1."wlbNpdidWellboreReclass" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
qview3."cmpNpdidCompany" IS NOT NULL AND
qview3."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview4."wlbNpdidWellbore") AND
(qview4."wlbDrillingOperator" = qview5."cmpLongName") AND
(qview3."cmpNpdidCompany" = qview5."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellboreReclass" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview2."wlbCompletionYear" AS t6v0,  qview3."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_shallow_all" qview2,
"public"."company" qview3,
"public"."wellbore_development_all" qview4,
"public"."company" qview5
WHERE 
qview1."wlbNpdidWellboreReclass" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
qview3."cmpNpdidCompany" IS NOT NULL AND
qview3."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview4."wlbNpdidWellbore") AND
(qview4."wlbDrillingOperator" = qview5."cmpLongName") AND
(qview3."cmpNpdidCompany" = qview5."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellboreReclass" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_shallow_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellboreReclass" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellboreReclass" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_shallow_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellboreReclass" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellboreReclass" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellboreReclass" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellboreReclass" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellboreReclass" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellboreReclass" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellboreReclass" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellboreReclass" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellboreReclass" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellboreReclass" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellboreReclass" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellboreReclass" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_exploration_all" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellboreReclass" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellboreReclass" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellboreReclass" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellboreReclass" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellboreReclass" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellboreReclass" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellboreReclass" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellboreReclass" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellboreReclass" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellboreReclass" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellboreReclass" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellboreReclass" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellboreReclass" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellboreReclass" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellboreReclass" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellboreReclass" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellboreReclass" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellboreReclass" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellboreReclass" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellboreReclass" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellboreReclass" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellboreReclass" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellboreReclass" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellboreReclass" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellboreReclass" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellboreReclass" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_shallow_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellboreReclass" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellboreReclass" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_shallow_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellboreReclass" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellboreReclass" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview2."wlbCompletionYear" AS t6v0,  qview3."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_shallow_all" qview2,
"public"."company" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."company" qview5
WHERE 
qview1."wlbNpdidWellboreReclass" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
qview3."cmpNpdidCompany" IS NOT NULL AND
qview3."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview4."wlbNpdidWellbore") AND
(qview4."wlbDrillingOperator" = qview5."cmpLongName") AND
(qview3."cmpNpdidCompany" = qview5."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellboreReclass" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview2."wlbCompletionYear" AS t6v0,  qview3."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_shallow_all" qview2,
"public"."company" qview3,
"public"."wellbore_development_all" qview4,
"public"."company" qview5
WHERE 
qview1."wlbNpdidWellboreReclass" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
qview3."cmpNpdidCompany" IS NOT NULL AND
qview3."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview4."wlbNpdidWellbore") AND
(qview4."wlbDrillingOperator" = qview5."cmpLongName") AND
(qview3."cmpNpdidCompany" = qview5."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellboreReclass" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_shallow_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellboreReclass" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellboreReclass" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_shallow_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellboreReclass" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellboreReclass" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellboreReclass" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellboreReclass" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellboreReclass" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellboreReclass" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellboreReclass" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellboreReclass" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellboreReclass" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellboreReclass" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellboreReclass" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellboreReclass" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_development_all" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellboreReclass" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellboreReclass" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview1."wlbCompletionYear" AS t6v0,  qview3."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."company" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."company" qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
qview3."cmpNpdidCompany" IS NOT NULL AND
qview3."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview4."wlbDrillingOperator" = qview5."cmpLongName") AND
(qview3."cmpNpdidCompany" = qview5."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview1."wlbCompletionYear" AS t6v0,  qview3."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."company" qview3,
"public"."wellbore_development_all" qview4,
"public"."company" qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
qview3."cmpNpdidCompany" IS NOT NULL AND
qview3."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview4."wlbDrillingOperator" = qview5."cmpLongName") AND
(qview3."cmpNpdidCompany" = qview5."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview1."wlbCompletionYear" AS t6v0,  qview3."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."company" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."company" qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
qview3."cmpNpdidCompany" IS NOT NULL AND
qview3."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview4."wlbDrillingOperator" = qview5."cmpLongName") AND
(qview3."cmpNpdidCompany" = qview5."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview1."wlbCompletionYear" AS t6v0,  qview3."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."company" qview3,
"public"."wellbore_development_all" qview4,
"public"."company" qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
qview3."cmpNpdidCompany" IS NOT NULL AND
qview3."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview4."wlbDrillingOperator" = qview5."cmpLongName") AND
(qview3."cmpNpdidCompany" = qview5."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview1."wlbWellboreName" AS t5v0,  qview2."wlbCompletionYear" AS t6v0,  qview3."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."company" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."company" qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL AND
qview3."cmpNpdidCompany" IS NOT NULL AND
qview3."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview4."wlbDrillingOperator" = qview5."cmpLongName") AND
(qview3."cmpNpdidCompany" = qview5."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview1."wlbWellboreName" AS t5v0,  qview2."wlbCompletionYear" AS t6v0,  qview3."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."company" qview3,
"public"."wellbore_development_all" qview4,
"public"."company" qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL AND
qview3."cmpNpdidCompany" IS NOT NULL AND
qview3."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview4."wlbDrillingOperator" = qview5."cmpLongName") AND
(qview3."cmpNpdidCompany" = qview5."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview1."wlbWellboreName" AS t5v0,  qview1."wlbCompletionYear" AS t6v0,  qview2."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."company" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
qview2."cmpNpdidCompany" IS NOT NULL AND
qview2."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview3."wlbDrillingOperator" = qview4."cmpLongName") AND
(qview2."cmpNpdidCompany" = qview4."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview1."wlbWellboreName" AS t5v0,  qview1."wlbCompletionYear" AS t6v0,  qview2."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."company" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
qview2."cmpNpdidCompany" IS NOT NULL AND
qview2."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
(qview3."wlbDrillingOperator" = qview4."cmpLongName") AND
(qview2."cmpNpdidCompany" = qview4."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview1."wlbWellboreName" AS t5v0,  qview2."wlbCompletionYear" AS t6v0,  qview3."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."company" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."company" qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL AND
qview3."cmpNpdidCompany" IS NOT NULL AND
qview3."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview4."wlbDrillingOperator" = qview5."cmpLongName") AND
(qview3."cmpNpdidCompany" = qview5."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview1."wlbWellboreName" AS t5v0,  qview2."wlbCompletionYear" AS t6v0,  qview3."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_development_all" qview2,
"public"."company" qview3,
"public"."wellbore_development_all" qview4,
"public"."company" qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
qview1."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbCompletionYear" IS NOT NULL AND
qview3."cmpNpdidCompany" IS NOT NULL AND
qview3."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview4."wlbDrillingOperator" = qview5."cmpLongName") AND
(qview3."cmpNpdidCompany" = qview5."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview1."wlbCompletionYear" AS t6v0,  qview3."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."company" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."company" qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
qview3."cmpNpdidCompany" IS NOT NULL AND
qview3."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview4."wlbDrillingOperator" = qview5."cmpLongName") AND
(qview3."cmpNpdidCompany" = qview5."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview1."wlbCompletionYear" AS t6v0,  qview3."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."company" qview3,
"public"."wellbore_development_all" qview4,
"public"."company" qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
qview1."wlbCompletionYear" IS NOT NULL AND
qview3."cmpNpdidCompany" IS NOT NULL AND
qview3."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview4."wlbDrillingOperator" = qview5."cmpLongName") AND
(qview3."cmpNpdidCompany" = qview5."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_shallow_all" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_development_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_exploration_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_shallow_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_shallow_all" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview2."wlbCompletionYear" AS t6v0,  qview3."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_shallow_all" qview2,
"public"."company" qview3,
"public"."wellbore_exploration_all" qview4,
"public"."company" qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
qview3."cmpNpdidCompany" IS NOT NULL AND
qview3."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview4."wlbDrillingOperator" = qview5."cmpLongName") AND
(qview3."cmpNpdidCompany" = qview5."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview2."wlbCompletionYear" AS t6v0,  qview3."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_shallow_all" qview2,
"public"."company" qview3,
"public"."wellbore_development_all" qview4,
"public"."company" qview5
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
qview2."wlbCompletionYear" IS NOT NULL AND
qview3."cmpNpdidCompany" IS NOT NULL AND
qview3."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview4."wlbNpdidWellbore") AND
(qview4."wlbDrillingOperator" = qview5."cmpLongName") AND
(qview3."cmpNpdidCompany" = qview5."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_shallow_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_shallow_all" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_exploration_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_shallow_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_exploration_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")

UNION
SELECT qview1."wlbNpdidWellbore" AS t4v0,  qview2."wlbWellboreName" AS t5v0,  qview3."wlbCompletionYear" AS t6v0,  qview4."cmpLongName"
  AS t7v0 FROM 
"public"."wellbore_npdid_overview" qview1,
"public"."wellbore_npdid_overview" qview2,
"public"."wellbore_development_all" qview3,
"public"."company" qview4,
"public"."wellbore_development_all" qview5,
"public"."company" qview6
WHERE 
qview1."wlbNpdidWellbore" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview2."wlbNpdidWellbore") AND
qview2."wlbWellboreName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview3."wlbNpdidWellbore") AND
qview3."wlbCompletionYear" IS NOT NULL AND
qview4."cmpNpdidCompany" IS NOT NULL AND
qview4."cmpLongName" IS NOT NULL AND
(qview1."wlbNpdidWellbore" = qview5."wlbNpdidWellbore") AND
(qview5."wlbDrillingOperator" = qview6."cmpLongName") AND
(qview4."cmpNpdidCompany" = qview6."cmpNpdidCompany")
) f_2 WHERE f_1.t4v0=f_2.t4v0 
