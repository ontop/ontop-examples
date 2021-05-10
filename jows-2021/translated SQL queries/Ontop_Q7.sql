SELECT v15."node_id1m258" AS "node_id1m258", v15."v0" AS "v0", ST_ASTEXT(ST_BUFFER('POINT(7.25124 43.44051)','500')) AS "v1", v15."v1230m358" AS "v1230m358", ST_ASTEXT(v15."geom2m34") AS "v2"
FROM (SELECT DISTINCT v13."geom2m34" AS "geom2m34", v13."node_id1m258" AS "node_id1m258", v13."v0" AS "v0", v13."v1230m358" AS "v1230m358"
FROM (SELECT v1."geom" AS "geom2m34", v1."id" AS "node_id1m258", 0 AS "v0", v5."v1230m358" AS "v1230m358"
FROM "nodes" v1, "lgd_node_tags_resource_kv" v2, (SELECT DISTINCT v3."node_id" AS "node_id1m4", v3."v" AS "v1230m358"
FROM "lgd_node_tags_text" v3
WHERE (v3."node_id" IS NOT NULL AND v3."v" IS NOT NULL AND 'http://www.w3.org/2000/01/rdf-schema#label' = v3."property" AND 'it' = v3."language")
) v5
WHERE (ST_WITHIN(v1."geom",CAST(ST_ASTEXT(ST_BUFFER('POINT(7.25124 43.44051)','500')) AS TEXT)) AND v1."geom" IS NOT NULL AND v1."id" = v2."node_id" AND v1."id" = v5."node_id1m4" AND 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type' = v2."property" AND 'http://linkedgeodata.org/ontology/Bar' = v2."object")
UNION ALL 
SELECT v7."geom" AS "geom2m34", v7."id" AS "node_id1m258", 1 AS "v0", v11."v1230m358" AS "v1230m358"
FROM "nodes" v7, "lgd_node_tags_resource_kv" v8, (SELECT DISTINCT v9."node_id" AS "node_id1m10", v9."v" AS "v1230m358"
FROM "lgd_node_tags_text" v9
WHERE ((v9."node_id" IS NOT NULL AND v9."v" IS NOT NULL AND 'http://www.w3.org/2000/01/rdf-schema#label' = v9."property" AND '' = v9."language") OR (v9."node_id" IS NOT NULL AND v9."v" IS NOT NULL AND 'http://www.w3.org/2000/01/rdf-schema#label' = v9."property" AND 'botanical' = v9."language") OR (v9."node_id" IS NOT NULL AND v9."v" IS NOT NULL AND 'http://www.w3.org/2000/01/rdf-schema#label' = v9."property" AND 'carnaval' = v9."language"))
) v11
WHERE (ST_WITHIN(v7."geom",CAST(ST_ASTEXT(ST_BUFFER('POINT(7.25124 43.44051)','500')) AS TEXT)) AND v7."geom" IS NOT NULL AND v7."id" = v8."node_id" AND v7."id" = v11."node_id1m10" AND 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type' = v8."property" AND 'http://linkedgeodata.org/ontology/Bar' = v8."object")
) v13
) v15
