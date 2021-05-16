CONSTRUCT [a, ag, name] [a/RDF(http://linkedgeodata.org/triplify/node{}(BIGINTToTEXT(node_id1m151)),IRI), ag/RDF(v1,http://www.opengis.net/ont/geosparql#wktLiteral), name/RDF(v1230m358,RDF_TYPE{1=xsd:string,0=@it}(v0))]
NATIVE [node_id1m151, v0, v1, v1230m358]
SELECT v15."node_id1m151" AS "node_id1m151", v15."v0" AS "v0", ST_ASTEXT(v15."geom2m34") AS "v1", v15."v1230m358" AS "v1230m358"
FROM (SELECT DISTINCT v13."geom2m34" AS "geom2m34", v13."node_id1m151" AS "node_id1m151", v13."v0" AS "v0", v13."v1230m358" AS "v1230m358"
FROM (SELECT v1."geom" AS "geom2m34", v1."id" AS "node_id1m151", 0 AS "v0", v5."v1230m358" AS "v1230m358"
FROM "nodes" v1, "lgd_node_tags_resource_kv" v2, (SELECT DISTINCT v3."node_id" AS "node_id1m3", v3."v" AS "v1230m358"
FROM "lgd_node_tags_text" v3
WHERE (v3."node_id" IS NOT NULL AND v3."v" IS NOT NULL AND 'http://www.w3.org/2000/01/rdf-schema#label' = v3."property" AND 'it' = v3."language")
) v5
WHERE (ST_CONTAINS('POLYGON((11 46.45, 11.6 46.45, 11.6 46.64, 11 46.64, 11 46.45))',v1."geom") AND v1."geom" IS NOT NULL AND v1."id" = v2."node_id" AND v1."id" = v5."node_id1m3" AND 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type' = v2."property" AND 'http://linkedgeodata.org/ontology/Bank' = v2."object")
UNION ALL 
SELECT v7."geom" AS "geom2m34", v7."id" AS "node_id1m151", 1 AS "v0", v11."v1230m358" AS "v1230m358"
FROM "nodes" v7, "lgd_node_tags_resource_kv" v8, (SELECT DISTINCT v9."node_id" AS "node_id1m9", v9."v" AS "v1230m358"
FROM "lgd_node_tags_text" v9
WHERE ((v9."node_id" IS NOT NULL AND v9."v" IS NOT NULL AND 'http://www.w3.org/2000/01/rdf-schema#label' = v9."property" AND '' = v9."language") OR (v9."node_id" IS NOT NULL AND v9."v" IS NOT NULL AND 'http://www.w3.org/2000/01/rdf-schema#label' = v9."property" AND 'botanical' = v9."language") OR (v9."node_id" IS NOT NULL AND v9."v" IS NOT NULL AND 'http://www.w3.org/2000/01/rdf-schema#label' = v9."property" AND 'carnaval' = v9."language"))
) v11
WHERE (ST_CONTAINS('POLYGON((11 46.45, 11.6 46.45, 11.6 46.64, 11 46.64, 11 46.45))',v7."geom") AND v7."geom" IS NOT NULL AND v7."id" = v8."node_id" AND v7."id" = v11."node_id1m9" AND 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type' = v8."property" AND 'http://linkedgeodata.org/ontology/Bank' = v8."object")
) v13
) v15
