SELECT ST_ASTEXT(v5."geom2m33") AS "v0"
FROM (SELECT DISTINCT v2."geom" AS "geom2m33", v1."node_id" AS "node_id1m257", v3."v" AS "v1230m356"
FROM "lgd_node_tags_resource_kv" v1, "nodes" v2, "lgd_node_tags_text" v3
WHERE (ST_INTERSECTS(v2."geom",'POLYGON((7.3 44.5, 8.5 44.5, 8.5 45.5, 7.3 45.5, 7.3 44.5))') AND v2."geom" IS NOT NULL AND ((v3."v" IS NOT NULL AND 'http://www.w3.org/2000/01/rdf-schema#label' = v3."property" AND '' = v3."language") OR (v3."v" IS NOT NULL AND 'http://www.w3.org/2000/01/rdf-schema#label' = v3."property" AND 'botanical' = v3."language") OR (v3."v" IS NOT NULL AND 'http://www.w3.org/2000/01/rdf-schema#label' = v3."property" AND 'carnaval' = v3."language")) AND v1."node_id" = v2."id" AND v1."node_id" = v3."node_id" AND 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type' = v1."property" AND 'http://linkedgeodata.org/ontology/Bakery' = v1."object")
) v5
