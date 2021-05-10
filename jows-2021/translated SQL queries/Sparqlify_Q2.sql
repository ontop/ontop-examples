SELECT "a_193"."C_9" "C_9", "a_193"."C_15" "C_15", "a_193"."C_14" "C_14", "a_193"."C_13" "C_13", "a_193"."C_12" "C_12"
FROM
(     SELECT NULL::text "C_14", NULL::text "C_13", "a_4"."object" "C_12", ('http://linkedgeodata.org/geometry/relation'::text || ("a_1"."relation_id"::text)) "C_11", 'http://linkedgeodata.org/osm/'::text "C_10", "a_3"."object" "C_5", "a_3"."property" "C_4", 'http://geovocab.org/geometry#geometry'::text "C_7", "a_4"."property" "C_6", ('http://linkedgeodata.org/triplify/relation'::text || ("a_1"."relation_id"::text)) "C_9", 'http://www.opengis.net/ont/geosparql#asWKT'::text "C_8", "a_2"."geom" "C_15"
      FROM
        "lgd_relation_geoms" "a_1", 
        "lgd_relation_tags_resource_k" "a_3", 
        "lgd_relation_geoms" "a_2", 
        "lgd_relation_tags_resource_k" "a_4"
      WHERE ("a_2"."geom" IS NOT NULL) AND ("a_1"."relation_id" = "a_2"."relation_id") AND ("a_3"."object" IS NOT NULL) AND ("a_3"."property" IS NOT NULL) AND ("a_3"."relation_id" IS NOT NULL) AND ("a_1"."relation_id" = "a_3"."relation_id") AND ("a_4"."object" IS NOT NULL) AND ("a_4"."property" IS NOT NULL) AND ("a_4"."relation_id" IS NOT NULL) AND ("a_1"."relation_id" = "a_4"."relation_id") AND ("a_3"."property" = 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'::text) AND ST_Intersects("a_2"."geom", ST_GeomFromText('POLYGON((7.3 44.5, 8.5 44.5, 8.5 45.5, 7.3 45.5, 7.3 44.5))'::text, 4326)) AND ("a_3"."object" = 'http://linkedgeodata.org/ontology/Bakery'::text) AND ("a_4"."property" = 'http://www.w3.org/2000/01/rdf-schema#label'::text)
    UNION ALL
      SELECT NULL::text "C_14", NULL::text "C_13", "a_8"."object" "C_12", ('http://linkedgeodata.org/geometry/relation'::text || ("a_5"."relation_id"::text)) "C_11", 'http://linkedgeodata.org/osm/'::text "C_10", "a_7"."object" "C_5", "a_7"."property" "C_4", 'http://geovocab.org/geometry#geometry'::text "C_7", "a_8"."property" "C_6", ('http://linkedgeodata.org/triplify/relation'::text || ("a_5"."relation_id"::text)) "C_9", 'http://www.opengis.net/ont/geosparql#asWKT'::text "C_8", "a_6"."geom" "C_15"
      FROM
        "lgd_relation_geoms" "a_5", 
        "lgd_relation_tags_resource_k" "a_7", 
        "lgd_relation_geoms" "a_6", 
        "lgd_relation_tags_property" "a_8"
      WHERE ("a_6"."geom" IS NOT NULL) AND ("a_5"."relation_id" = "a_6"."relation_id") AND ("a_7"."object" IS NOT NULL) AND ("a_7"."property" IS NOT NULL) AND ("a_7"."relation_id" IS NOT NULL) AND ("a_5"."relation_id" = "a_7"."relation_id") AND ("a_8"."object" IS NOT NULL) AND ("a_8"."property" IS NOT NULL) AND ("a_8"."relation_id" IS NOT NULL) AND ("a_5"."relation_id" = "a_8"."relation_id") AND ("a_7"."property" = 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'::text) AND ST_Intersects("a_6"."geom", ST_GeomFromText('POLYGON((7.3 44.5, 8.5 44.5, 8.5 45.5, 7.3 45.5, 7.3 44.5))'::text, 4326)) AND ("a_7"."object" = 'http://linkedgeodata.org/ontology/Bakery'::text) AND ("a_8"."property" = 'http://www.w3.org/2000/01/rdf-schema#label'::text)
    UNION ALL
      SELECT "a_12"."language" "C_14", "a_12"."v" "C_13", NULL::text "C_12", ('http://linkedgeodata.org/geometry/relation'::text || ("a_9"."relation_id"::text)) "C_11", 'http://linkedgeodata.org/osm/'::text "C_10", "a_11"."object" "C_5", "a_11"."property" "C_4", 'http://geovocab.org/geometry#geometry'::text "C_7", "a_12"."property" "C_6", ('http://linkedgeodata.org/triplify/relation'::text || ("a_9"."relation_id"::text)) "C_9", 'http://www.opengis.net/ont/geosparql#asWKT'::text "C_8", "a_10"."geom" "C_15"
      FROM
        "lgd_relation_geoms" "a_10", 
        "lgd_relation_tags_text" "a_12", 
        "lgd_relation_tags_resource_k" "a_11", 
        "lgd_relation_geoms" "a_9"
      WHERE ("a_10"."geom" IS NOT NULL) AND ("a_9"."relation_id" = "a_10"."relation_id") AND ("a_11"."object" IS NOT NULL) AND ("a_11"."property" IS NOT NULL) AND ("a_11"."relation_id" IS NOT NULL) AND ("a_9"."relation_id" = "a_11"."relation_id") AND ("a_12"."language" IS NOT NULL) AND ("a_12"."v" IS NOT NULL) AND ("a_12"."property" IS NOT NULL) AND ("a_12"."relation_id" IS NOT NULL) AND ("a_9"."relation_id" = "a_12"."relation_id") AND ("a_12"."language" = ''::text) AND ("a_11"."property" = 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'::text) AND ST_Intersects("a_10"."geom", ST_GeomFromText('POLYGON((7.3 44.5, 8.5 44.5, 8.5 45.5, 7.3 45.5, 7.3 44.5))'::text, 4326)) AND ("a_11"."object" = 'http://linkedgeodata.org/ontology/Bakery'::text) AND ("a_12"."property" = 'http://www.w3.org/2000/01/rdf-schema#label'::text)
    UNION ALL
      SELECT NULL::text "C_14", NULL::text "C_13", "a_16"."object" "C_12", ('http://linkedgeodata.org/geometry/relation'::text || ("a_13"."relation_id"::text)) "C_11", 'http://linkedgeodata.org/osm/'::text "C_10", "a_15"."object" "C_5", "a_15"."property" "C_4", 'http://geovocab.org/geometry#geometry'::text "C_7", "a_16"."property" "C_6", ('http://linkedgeodata.org/triplify/relation'::text || ("a_13"."relation_id"::text)) "C_9", 'http://www.opengis.net/ont/geosparql#asWKT'::text "C_8", "a_14"."geom" "C_15"
      FROM
        "lgd_relation_geoms" "a_14", 
        "lgd_relation_geoms" "a_13", 
        "lgd_relation_tags_resource_kv" "a_16", 
        "lgd_relation_tags_resource_k" "a_15"
      WHERE ("a_14"."geom" IS NOT NULL) AND ("a_13"."relation_id" = "a_14"."relation_id") AND ("a_15"."object" IS NOT NULL) AND ("a_15"."property" IS NOT NULL) AND ("a_15"."relation_id" IS NOT NULL) AND ("a_13"."relation_id" = "a_15"."relation_id") AND ("a_16"."object" IS NOT NULL) AND ("a_16"."property" IS NOT NULL) AND ("a_16"."relation_id" IS NOT NULL) AND ("a_13"."relation_id" = "a_16"."relation_id") AND ("a_15"."property" = 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'::text) AND ST_Intersects("a_14"."geom", ST_GeomFromText('POLYGON((7.3 44.5, 8.5 44.5, 8.5 45.5, 7.3 45.5, 7.3 44.5))'::text, 4326)) AND ("a_15"."object" = 'http://linkedgeodata.org/ontology/Bakery'::text) AND ("a_16"."property" = 'http://www.w3.org/2000/01/rdf-schema#label'::text)
    UNION ALL
      SELECT NULL::text "C_14", NULL::text "C_13", "a_20"."object" "C_12", ('http://linkedgeodata.org/geometry/relation'::text || ("a_17"."relation_id"::text)) "C_11", 'http://linkedgeodata.org/osm/'::text "C_10", "a_19"."object" "C_5", "a_19"."property" "C_4", 'http://geovocab.org/geometry#geometry'::text "C_7", "a_20"."property" "C_6", ('http://linkedgeodata.org/triplify/relation'::text || ("a_17"."relation_id"::text)) "C_9", 'http://www.opengis.net/ont/geosparql#asWKT'::text "C_8", "a_18"."geom" "C_15"
      FROM
        "lgd_relation_tags_resource_k" "a_20", 
        "lgd_relation_geoms" "a_18", 
        "lgd_relation_geoms" "a_17", 
        "lgd_relation_tags_property" "a_19"
      WHERE ("a_18"."geom" IS NOT NULL) AND ("a_17"."relation_id" = "a_18"."relation_id") AND ("a_19"."object" IS NOT NULL) AND ("a_19"."property" IS NOT NULL) AND ("a_19"."relation_id" IS NOT NULL) AND ("a_17"."relation_id" = "a_19"."relation_id") AND ("a_20"."object" IS NOT NULL) AND ("a_20"."property" IS NOT NULL) AND ("a_20"."relation_id" IS NOT NULL) AND ("a_17"."relation_id" = "a_20"."relation_id") AND ("a_19"."property" = 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'::text) AND ST_Intersects("a_18"."geom", ST_GeomFromText('POLYGON((7.3 44.5, 8.5 44.5, 8.5 45.5, 7.3 45.5, 7.3 44.5))'::text, 4326)) AND ("a_19"."object" = 'http://linkedgeodata.org/ontology/Bakery'::text) AND ("a_20"."property" = 'http://www.w3.org/2000/01/rdf-schema#label'::text)
    UNION ALL
      SELECT NULL::text "C_14", NULL::text "C_13", "a_24"."object" "C_12", ('http://linkedgeodata.org/geometry/relation'::text || ("a_21"."relation_id"::text)) "C_11", 'http://linkedgeodata.org/osm/'::text "C_10", "a_23"."object" "C_5", "a_23"."property" "C_4", 'http://geovocab.org/geometry#geometry'::text "C_7", "a_24"."property" "C_6", ('http://linkedgeodata.org/triplify/relation'::text || ("a_21"."relation_id"::text)) "C_9", 'http://www.opengis.net/ont/geosparql#asWKT'::text "C_8", "a_22"."geom" "C_15"
      FROM
        "lgd_relation_geoms" "a_21", 
        "lgd_relation_tags_property" "a_23", 
        "lgd_relation_geoms" "a_22", 
        "lgd_relation_tags_property" "a_24"
      WHERE ("a_22"."geom" IS NOT NULL) AND ("a_21"."relation_id" = "a_22"."relation_id") AND ("a_23"."object" IS NOT NULL) AND ("a_23"."property" IS NOT NULL) AND ("a_23"."relation_id" IS NOT NULL) AND ("a_21"."relation_id" = "a_23"."relation_id") AND ("a_24"."object" IS NOT NULL) AND ("a_24"."property" IS NOT NULL) AND ("a_24"."relation_id" IS NOT NULL) AND ("a_21"."relation_id" = "a_24"."relation_id") AND ("a_23"."property" = 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'::text) AND ST_Intersects("a_22"."geom", ST_GeomFromText('POLYGON((7.3 44.5, 8.5 44.5, 8.5 45.5, 7.3 45.5, 7.3 44.5))'::text, 4326)) AND ("a_23"."object" = 'http://linkedgeodata.org/ontology/Bakery'::text) AND ("a_24"."property" = 'http://www.w3.org/2000/01/rdf-schema#label'::text)
    UNION ALL
      SELECT "a_28"."language" "C_14", "a_28"."v" "C_13", NULL::text "C_12", ('http://linkedgeodata.org/geometry/relation'::text || ("a_25"."relation_id"::text)) "C_11", 'http://linkedgeodata.org/osm/'::text "C_10", "a_27"."object" "C_5", "a_27"."property" "C_4", 'http://geovocab.org/geometry#geometry'::text "C_7", "a_28"."property" "C_6", ('http://linkedgeodata.org/triplify/relation'::text || ("a_25"."relation_id"::text)) "C_9", 'http://www.opengis.net/ont/geosparql#asWKT'::text "C_8", "a_26"."geom" "C_15"
      FROM
        "lgd_relation_tags_text" "a_28", 
        "lgd_relation_geoms" "a_25", 
        "lgd_relation_tags_property" "a_27", 
        "lgd_relation_geoms" "a_26"
      WHERE ("a_26"."geom" IS NOT NULL) AND ("a_25"."relation_id" = "a_26"."relation_id") AND ("a_27"."object" IS NOT NULL) AND ("a_27"."property" IS NOT NULL) AND ("a_27"."relation_id" IS NOT NULL) AND ("a_25"."relation_id" = "a_27"."relation_id") AND ("a_28"."language" IS NOT NULL) AND ("a_28"."v" IS NOT NULL) AND ("a_28"."property" IS NOT NULL) AND ("a_28"."relation_id" IS NOT NULL) AND ("a_25"."relation_id" = "a_28"."relation_id") AND ("a_28"."language" = ''::text) AND ("a_27"."property" = 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'::text) AND ST_Intersects("a_26"."geom", ST_GeomFromText('POLYGON((7.3 44.5, 8.5 44.5, 8.5 45.5, 7.3 45.5, 7.3 44.5))'::text, 4326)) AND ("a_27"."object" = 'http://linkedgeodata.org/ontology/Bakery'::text) AND ("a_28"."property" = 'http://www.w3.org/2000/01/rdf-schema#label'::text)
    UNION ALL
      SELECT NULL::text "C_14", NULL::text "C_13", "a_32"."object" "C_12", ('http://linkedgeodata.org/geometry/relation'::text || ("a_29"."relation_id"::text)) "C_11", 'http://linkedgeodata.org/osm/'::text "C_10", "a_31"."object" "C_5", "a_31"."property" "C_4", 'http://geovocab.org/geometry#geometry'::text "C_7", "a_32"."property" "C_6", ('http://linkedgeodata.org/triplify/relation'::text || ("a_29"."relation_id"::text)) "C_9", 'http://www.opengis.net/ont/geosparql#asWKT'::text "C_8", "a_30"."geom" "C_15"
      FROM
        "lgd_relation_tags_resource_kv" "a_32", 
        "lgd_relation_tags_property" "a_31", 
        "lgd_relation_geoms" "a_30", 
        "lgd_relation_geoms" "a_29"
      WHERE ("a_30"."geom" IS NOT NULL) AND ("a_29"."relation_id" = "a_30"."relation_id") AND ("a_31"."object" IS NOT NULL) AND ("a_31"."property" IS NOT NULL) AND ("a_31"."relation_id" IS NOT NULL) AND ("a_29"."relation_id" = "a_31"."relation_id") AND ("a_32"."object" IS NOT NULL) AND ("a_32"."property" IS NOT NULL) AND ("a_32"."relation_id" IS NOT NULL) AND ("a_29"."relation_id" = "a_32"."relation_id") AND ("a_31"."property" = 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'::text) AND ST_Intersects("a_30"."geom", ST_GeomFromText('POLYGON((7.3 44.5, 8.5 44.5, 8.5 45.5, 7.3 45.5, 7.3 44.5))'::text, 4326)) AND ("a_31"."object" = 'http://linkedgeodata.org/ontology/Bakery'::text) AND ("a_32"."property" = 'http://www.w3.org/2000/01/rdf-schema#label'::text)
    UNION ALL
      SELECT NULL::text "C_14", NULL::text "C_13", "a_36"."object" "C_12", ('http://linkedgeodata.org/geometry/relation'::text || ("a_33"."relation_id"::text)) "C_11", 'http://linkedgeodata.org/osm/'::text "C_10", "a_35"."object" "C_5", "a_35"."property" "C_4", 'http://geovocab.org/geometry#geometry'::text "C_7", "a_36"."property" "C_6", ('http://linkedgeodata.org/triplify/relation'::text || ("a_33"."relation_id"::text)) "C_9", 'http://www.opengis.net/ont/geosparql#asWKT'::text "C_8", "a_34"."geom" "C_15"
      FROM
        "lgd_relation_geoms" "a_34", 
        "lgd_relation_geoms" "a_33", 
        "lgd_relation_tags_resource_k" "a_36", 
        "lgd_relation_tags_resource_kv" "a_35"
      WHERE ("a_34"."geom" IS NOT NULL) AND ("a_33"."relation_id" = "a_34"."relation_id") AND ("a_35"."object" IS NOT NULL) AND ("a_35"."property" IS NOT NULL) AND ("a_35"."relation_id" IS NOT NULL) AND ("a_33"."relation_id" = "a_35"."relation_id") AND ("a_36"."object" IS NOT NULL) AND ("a_36"."property" IS NOT NULL) AND ("a_36"."relation_id" IS NOT NULL) AND ("a_33"."relation_id" = "a_36"."relation_id") AND ("a_35"."property" = 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'::text) AND ST_Intersects("a_34"."geom", ST_GeomFromText('POLYGON((7.3 44.5, 8.5 44.5, 8.5 45.5, 7.3 45.5, 7.3 44.5))'::text, 4326)) AND ("a_35"."object" = 'http://linkedgeodata.org/ontology/Bakery'::text) AND ("a_36"."property" = 'http://www.w3.org/2000/01/rdf-schema#label'::text)
    UNION ALL
      SELECT NULL::text "C_14", NULL::text "C_13", "a_40"."object" "C_12", ('http://linkedgeodata.org/geometry/relation'::text || ("a_37"."relation_id"::text)) "C_11", 'http://linkedgeodata.org/osm/'::text "C_10", "a_39"."object" "C_5", "a_39"."property" "C_4", 'http://geovocab.org/geometry#geometry'::text "C_7", "a_40"."property" "C_6", ('http://linkedgeodata.org/triplify/relation'::text || ("a_37"."relation_id"::text)) "C_9", 'http://www.opengis.net/ont/geosparql#asWKT'::text "C_8", "a_38"."geom" "C_15"
      FROM
        "lgd_relation_tags_property" "a_40", 
        "lgd_relation_tags_resource_kv" "a_39", 
        "lgd_relation_geoms" "a_38", 
        "lgd_relation_geoms" "a_37"
      WHERE ("a_38"."geom" IS NOT NULL) AND ("a_37"."relation_id" = "a_38"."relation_id") AND ("a_39"."object" IS NOT NULL) AND ("a_39"."property" IS NOT NULL) AND ("a_39"."relation_id" IS NOT NULL) AND ("a_37"."relation_id" = "a_39"."relation_id") AND ("a_40"."object" IS NOT NULL) AND ("a_40"."property" IS NOT NULL) AND ("a_40"."relation_id" IS NOT NULL) AND ("a_37"."relation_id" = "a_40"."relation_id") AND ("a_39"."property" = 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'::text) AND ST_Intersects("a_38"."geom", ST_GeomFromText('POLYGON((7.3 44.5, 8.5 44.5, 8.5 45.5, 7.3 45.5, 7.3 44.5))'::text, 4326)) AND ("a_39"."object" = 'http://linkedgeodata.org/ontology/Bakery'::text) AND ("a_40"."property" = 'http://www.w3.org/2000/01/rdf-schema#label'::text)
    UNION ALL
      SELECT "a_44"."language" "C_14", "a_44"."v" "C_13", NULL::text "C_12", ('http://linkedgeodata.org/geometry/relation'::text || ("a_41"."relation_id"::text)) "C_11", 'http://linkedgeodata.org/osm/'::text "C_10", "a_43"."object" "C_5", "a_43"."property" "C_4", 'http://geovocab.org/geometry#geometry'::text "C_7", "a_44"."property" "C_6", ('http://linkedgeodata.org/triplify/relation'::text || ("a_41"."relation_id"::text)) "C_9", 'http://www.opengis.net/ont/geosparql#asWKT'::text "C_8", "a_42"."geom" "C_15"
      FROM
        "lgd_relation_tags_resource_kv" "a_43", 
        "lgd_relation_geoms" "a_42", 
        "lgd_relation_tags_text" "a_44", 
        "lgd_relation_geoms" "a_41"
      WHERE ("a_42"."geom" IS NOT NULL) AND ("a_41"."relation_id" = "a_42"."relation_id") AND ("a_43"."object" IS NOT NULL) AND ("a_43"."property" IS NOT NULL) AND ("a_43"."relation_id" IS NOT NULL) AND ("a_41"."relation_id" = "a_43"."relation_id") AND ("a_44"."language" IS NOT NULL) AND ("a_44"."v" IS NOT NULL) AND ("a_44"."property" IS NOT NULL) AND ("a_44"."relation_id" IS NOT NULL) AND ("a_41"."relation_id" = "a_44"."relation_id") AND ("a_44"."language" = ''::text) AND ("a_43"."property" = 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'::text) AND ST_Intersects("a_42"."geom", ST_GeomFromText('POLYGON((7.3 44.5, 8.5 44.5, 8.5 45.5, 7.3 45.5, 7.3 44.5))'::text, 4326)) AND ("a_43"."object" = 'http://linkedgeodata.org/ontology/Bakery'::text) AND ("a_44"."property" = 'http://www.w3.org/2000/01/rdf-schema#label'::text)
    UNION ALL
      SELECT NULL::text "C_14", NULL::text "C_13", "a_48"."object" "C_12", ('http://linkedgeodata.org/geometry/relation'::text || ("a_45"."relation_id"::text)) "C_11", 'http://linkedgeodata.org/osm/'::text "C_10", "a_47"."object" "C_5", "a_47"."property" "C_4", 'http://geovocab.org/geometry#geometry'::text "C_7", "a_48"."property" "C_6", ('http://linkedgeodata.org/triplify/relation'::text || ("a_45"."relation_id"::text)) "C_9", 'http://www.opengis.net/ont/geosparql#asWKT'::text "C_8", "a_46"."geom" "C_15"
      FROM
        "lgd_relation_geoms" "a_45", 
        "lgd_relation_tags_resource_kv" "a_47", 
        "lgd_relation_geoms" "a_46", 
        "lgd_relation_tags_resource_kv" "a_48"
      WHERE ("a_46"."geom" IS NOT NULL) AND ("a_45"."relation_id" = "a_46"."relation_id") AND ("a_47"."object" IS NOT NULL) AND ("a_47"."property" IS NOT NULL) AND ("a_47"."relation_id" IS NOT NULL) AND ("a_45"."relation_id" = "a_47"."relation_id") AND ("a_48"."object" IS NOT NULL) AND ("a_48"."property" IS NOT NULL) AND ("a_48"."relation_id" IS NOT NULL) AND ("a_45"."relation_id" = "a_48"."relation_id") AND ("a_47"."property" = 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'::text) AND ST_Intersects("a_46"."geom", ST_GeomFromText('POLYGON((7.3 44.5, 8.5 44.5, 8.5 45.5, 7.3 45.5, 7.3 44.5))'::text, 4326)) AND ("a_47"."object" = 'http://linkedgeodata.org/ontology/Bakery'::text) AND ("a_48"."property" = 'http://www.w3.org/2000/01/rdf-schema#label'::text)
    UNION ALL
      SELECT NULL::text "C_14", NULL::text "C_13", "a_52"."object" "C_12", ('http://linkedgeodata.org/geometry/way'::text || ("a_49"."id"::text)) "C_11", 'http://linkedgeodata.org/osm/'::text "C_10", "a_51"."object" "C_5", "a_51"."property" "C_4", 'http://geovocab.org/geometry#geometry'::text "C_7", "a_52"."property" "C_6", ('http://linkedgeodata.org/triplify/way'::text || ("a_49"."id"::text)) "C_9", 'http://www.opengis.net/ont/geosparql#asWKT'::text "C_8", "a_50"."polygon" "C_15"
      FROM
        "simple_polys" "a_50", 
        "lgd_way_tags_resource_kv" "a_52", 
        "lgd_way_tags_resource_kv" "a_51", 
        "ways" "a_49"
      WHERE ("a_50"."polygon" IS NOT NULL) AND ("a_49"."id" = "a_50"."way_id") AND ("a_51"."way_id" IS NOT NULL) AND ("a_51"."object" IS NOT NULL) AND ("a_51"."property" IS NOT NULL) AND ("a_49"."id" = "a_51"."way_id") AND ("a_52"."way_id" IS NOT NULL) AND ("a_52"."object" IS NOT NULL) AND ("a_52"."property" IS NOT NULL) AND ("a_49"."id" = "a_52"."way_id") AND ("a_51"."property" = 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'::text) AND ST_Intersects("a_50"."polygon", ST_GeomFromText('POLYGON((7.3 44.5, 8.5 44.5, 8.5 45.5, 7.3 45.5, 7.3 44.5))'::text, 4326)) AND ("a_51"."object" = 'http://linkedgeodata.org/ontology/Bakery'::text) AND ("a_52"."property" = 'http://www.w3.org/2000/01/rdf-schema#label'::text)
    UNION ALL
      SELECT "a_56"."language" "C_14", "a_56"."v" "C_13", NULL::text "C_12", ('http://linkedgeodata.org/geometry/way'::text || ("a_53"."id"::text)) "C_11", 'http://linkedgeodata.org/osm/'::text "C_10", "a_55"."object" "C_5", "a_55"."property" "C_4", 'http://geovocab.org/geometry#geometry'::text "C_7", "a_56"."property" "C_6", ('http://linkedgeodata.org/triplify/way'::text || ("a_53"."id"::text)) "C_9", 'http://www.opengis.net/ont/geosparql#asWKT'::text "C_8", "a_54"."polygon" "C_15"
      FROM
        "simple_polys" "a_54", 
        "ways" "a_53", 
        "lgd_way_tags_text" "a_56", 
        "lgd_way_tags_resource_kv" "a_55"
      WHERE ("a_54"."polygon" IS NOT NULL) AND ("a_53"."id" = "a_54"."way_id") AND ("a_55"."way_id" IS NOT NULL) AND ("a_55"."object" IS NOT NULL) AND ("a_55"."property" IS NOT NULL) AND ("a_53"."id" = "a_55"."way_id") AND ("a_56"."language" IS NOT NULL) AND ("a_56"."v" IS NOT NULL) AND ("a_56"."way_id" IS NOT NULL) AND ("a_56"."property" IS NOT NULL) AND ("a_53"."id" = "a_56"."way_id") AND ("a_56"."language" = ''::text) AND ("a_55"."property" = 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'::text) AND ST_Intersects("a_54"."polygon", ST_GeomFromText('POLYGON((7.3 44.5, 8.5 44.5, 8.5 45.5, 7.3 45.5, 7.3 44.5))'::text, 4326)) AND ("a_55"."object" = 'http://linkedgeodata.org/ontology/Bakery'::text) AND ("a_56"."property" = 'http://www.w3.org/2000/01/rdf-schema#label'::text)
    UNION ALL
      SELECT NULL::text "C_14", NULL::text "C_13", "a_60"."object" "C_12", ('http://linkedgeodata.org/geometry/way'::text || ("a_57"."id"::text)) "C_11", 'http://linkedgeodata.org/osm/'::text "C_10", "a_59"."object" "C_5", "a_59"."property" "C_4", 'http://geovocab.org/geometry#geometry'::text "C_7", "a_60"."property" "C_6", ('http://linkedgeodata.org/triplify/way'::text || ("a_57"."id"::text)) "C_9", 'http://www.opengis.net/ont/geosparql#asWKT'::text "C_8", "a_58"."polygon" "C_15"
      FROM
        "lgd_way_tags_resource_k" "a_60", 
        "simple_polys" "a_58", 
        "ways" "a_57", 
        "lgd_way_tags_resource_kv" "a_59"
      WHERE ("a_58"."polygon" IS NOT NULL) AND ("a_57"."id" = "a_58"."way_id") AND ("a_59"."way_id" IS NOT NULL) AND ("a_59"."object" IS NOT NULL) AND ("a_59"."property" IS NOT NULL) AND ("a_57"."id" = "a_59"."way_id") AND ("a_60"."way_id" IS NOT NULL) AND ("a_60"."object" IS NOT NULL) AND ("a_60"."property" IS NOT NULL) AND ("a_57"."id" = "a_60"."way_id") AND ("a_59"."property" = 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'::text) AND ST_Intersects("a_58"."polygon", ST_GeomFromText('POLYGON((7.3 44.5, 8.5 44.5, 8.5 45.5, 7.3 45.5, 7.3 44.5))'::text, 4326)) AND ("a_59"."object" = 'http://linkedgeodata.org/ontology/Bakery'::text) AND ("a_60"."property" = 'http://www.w3.org/2000/01/rdf-schema#label'::text)
    UNION ALL
      SELECT NULL::text "C_14", NULL::text "C_13", "a_64"."object" "C_12", ('http://linkedgeodata.org/geometry/way'::text || ("a_61"."id"::text)) "C_11", 'http://linkedgeodata.org/osm/'::text "C_10", "a_63"."object" "C_5", "a_63"."property" "C_4", 'http://geovocab.org/geometry#geometry'::text "C_7", "a_64"."property" "C_6", ('http://linkedgeodata.org/triplify/way'::text || ("a_61"."id"::text)) "C_9", 'http://www.opengis.net/ont/geosparql#asWKT'::text "C_8", "a_62"."polygon" "C_15"
      FROM
        "lgd_way_tags_property" "a_64", 
        "ways" "a_61", 
        "lgd_way_tags_resource_kv" "a_63", 
        "simple_polys" "a_62"
      WHERE ("a_62"."polygon" IS NOT NULL) AND ("a_61"."id" = "a_62"."way_id") AND ("a_63"."way_id" IS NOT NULL) AND ("a_63"."object" IS NOT NULL) AND ("a_63"."property" IS NOT NULL) AND ("a_61"."id" = "a_63"."way_id") AND ("a_64"."way_id" IS NOT NULL) AND ("a_64"."object" IS NOT NULL) AND ("a_64"."property" IS NOT NULL) AND ("a_61"."id" = "a_64"."way_id") AND ("a_63"."property" = 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'::text) AND ST_Intersects("a_62"."polygon", ST_GeomFromText('POLYGON((7.3 44.5, 8.5 44.5, 8.5 45.5, 7.3 45.5, 7.3 44.5))'::text, 4326)) AND ("a_63"."object" = 'http://linkedgeodata.org/ontology/Bakery'::text) AND ("a_64"."property" = 'http://www.w3.org/2000/01/rdf-schema#label'::text)
    UNION ALL
      SELECT NULL::text "C_14", NULL::text "C_13", "a_68"."object" "C_12", ('http://linkedgeodata.org/geometry/way'::text || ("a_65"."id"::text)) "C_11", 'http://linkedgeodata.org/osm/'::text "C_10", "a_67"."object" "C_5", "a_67"."property" "C_4", 'http://geovocab.org/geometry#geometry'::text "C_7", "a_68"."property" "C_6", ('http://linkedgeodata.org/triplify/way'::text || ("a_65"."id"::text)) "C_9", 'http://www.opengis.net/ont/geosparql#asWKT'::text "C_8", "a_66"."polygon" "C_15"
      FROM
        "ways" "a_65", 
        "lgd_way_tags_resource_k" "a_67", 
        "simple_polys" "a_66", 
        "lgd_way_tags_resource_kv" "a_68"
      WHERE ("a_66"."polygon" IS NOT NULL) AND ("a_65"."id" = "a_66"."way_id") AND ("a_67"."way_id" IS NOT NULL) AND ("a_67"."object" IS NOT NULL) AND ("a_67"."property" IS NOT NULL) AND ("a_65"."id" = "a_67"."way_id") AND ("a_68"."way_id" IS NOT NULL) AND ("a_68"."object" IS NOT NULL) AND ("a_68"."property" IS NOT NULL) AND ("a_65"."id" = "a_68"."way_id") AND ("a_67"."property" = 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'::text) AND ST_Intersects("a_66"."polygon", ST_GeomFromText('POLYGON((7.3 44.5, 8.5 44.5, 8.5 45.5, 7.3 45.5, 7.3 44.5))'::text, 4326)) AND ("a_67"."object" = 'http://linkedgeodata.org/ontology/Bakery'::text) AND ("a_68"."property" = 'http://www.w3.org/2000/01/rdf-schema#label'::text)
    UNION ALL
      SELECT "a_72"."language" "C_14", "a_72"."v" "C_13", NULL::text "C_12", ('http://linkedgeodata.org/geometry/way'::text || ("a_69"."id"::text)) "C_11", 'http://linkedgeodata.org/osm/'::text "C_10", "a_71"."object" "C_5", "a_71"."property" "C_4", 'http://geovocab.org/geometry#geometry'::text "C_7", "a_72"."property" "C_6", ('http://linkedgeodata.org/triplify/way'::text || ("a_69"."id"::text)) "C_9", 'http://www.opengis.net/ont/geosparql#asWKT'::text "C_8", "a_70"."polygon" "C_15"
      FROM
        "lgd_way_tags_text" "a_72", 
        "lgd_way_tags_resource_k" "a_71", 
        "simple_polys" "a_70", 
        "ways" "a_69"
      WHERE ("a_70"."polygon" IS NOT NULL) AND ("a_69"."id" = "a_70"."way_id") AND ("a_71"."way_id" IS NOT NULL) AND ("a_71"."object" IS NOT NULL) AND ("a_71"."property" IS NOT NULL) AND ("a_69"."id" = "a_71"."way_id") AND ("a_72"."language" IS NOT NULL) AND ("a_72"."v" IS NOT NULL) AND ("a_72"."way_id" IS NOT NULL) AND ("a_72"."property" IS NOT NULL) AND ("a_69"."id" = "a_72"."way_id") AND ("a_72"."language" = ''::text) AND ("a_71"."property" = 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'::text) AND ST_Intersects("a_70"."polygon", ST_GeomFromText('POLYGON((7.3 44.5, 8.5 44.5, 8.5 45.5, 7.3 45.5, 7.3 44.5))'::text, 4326)) AND ("a_71"."object" = 'http://linkedgeodata.org/ontology/Bakery'::text) AND ("a_72"."property" = 'http://www.w3.org/2000/01/rdf-schema#label'::text)
    UNION ALL
      SELECT NULL::text "C_14", NULL::text "C_13", "a_76"."object" "C_12", ('http://linkedgeodata.org/geometry/way'::text || ("a_73"."id"::text)) "C_11", 'http://linkedgeodata.org/osm/'::text "C_10", "a_75"."object" "C_5", "a_75"."property" "C_4", 'http://geovocab.org/geometry#geometry'::text "C_7", "a_76"."property" "C_6", ('http://linkedgeodata.org/triplify/way'::text || ("a_73"."id"::text)) "C_9", 'http://www.opengis.net/ont/geosparql#asWKT'::text "C_8", "a_74"."polygon" "C_15"
      FROM
        "lgd_way_tags_resource_k" "a_76", 
        "lgd_way_tags_resource_k" "a_75", 
        "simple_polys" "a_74", 
        "ways" "a_73"
      WHERE ("a_74"."polygon" IS NOT NULL) AND ("a_73"."id" = "a_74"."way_id") AND ("a_75"."way_id" IS NOT NULL) AND ("a_75"."object" IS NOT NULL) AND ("a_75"."property" IS NOT NULL) AND ("a_73"."id" = "a_75"."way_id") AND ("a_76"."way_id" IS NOT NULL) AND ("a_76"."object" IS NOT NULL) AND ("a_76"."property" IS NOT NULL) AND ("a_73"."id" = "a_76"."way_id") AND ("a_75"."property" = 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'::text) AND ST_Intersects("a_74"."polygon", ST_GeomFromText('POLYGON((7.3 44.5, 8.5 44.5, 8.5 45.5, 7.3 45.5, 7.3 44.5))'::text, 4326)) AND ("a_75"."object" = 'http://linkedgeodata.org/ontology/Bakery'::text) AND ("a_76"."property" = 'http://www.w3.org/2000/01/rdf-schema#label'::text)
    UNION ALL
      SELECT NULL::text "C_14", NULL::text "C_13", "a_80"."object" "C_12", ('http://linkedgeodata.org/geometry/way'::text || ("a_77"."id"::text)) "C_11", 'http://linkedgeodata.org/osm/'::text "C_10", "a_79"."object" "C_5", "a_79"."property" "C_4", 'http://geovocab.org/geometry#geometry'::text "C_7", "a_80"."property" "C_6", ('http://linkedgeodata.org/triplify/way'::text || ("a_77"."id"::text)) "C_9", 'http://www.opengis.net/ont/geosparql#asWKT'::text "C_8", "a_78"."polygon" "C_15"
      FROM
        "simple_polys" "a_78", 
        "ways" "a_77", 
        "lgd_way_tags_property" "a_80", 
        "lgd_way_tags_resource_k" "a_79"
      WHERE ("a_78"."polygon" IS NOT NULL) AND ("a_77"."id" = "a_78"."way_id") AND ("a_79"."way_id" IS NOT NULL) AND ("a_79"."object" IS NOT NULL) AND ("a_79"."property" IS NOT NULL) AND ("a_77"."id" = "a_79"."way_id") AND ("a_80"."way_id" IS NOT NULL) AND ("a_80"."object" IS NOT NULL) AND ("a_80"."property" IS NOT NULL) AND ("a_77"."id" = "a_80"."way_id") AND ("a_79"."property" = 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'::text) AND ST_Intersects("a_78"."polygon", ST_GeomFromText('POLYGON((7.3 44.5, 8.5 44.5, 8.5 45.5, 7.3 45.5, 7.3 44.5))'::text, 4326)) AND ("a_79"."object" = 'http://linkedgeodata.org/ontology/Bakery'::text) AND ("a_80"."property" = 'http://www.w3.org/2000/01/rdf-schema#label'::text)
    UNION ALL
      SELECT NULL::text "C_14", NULL::text "C_13", "a_84"."object" "C_12", ('http://linkedgeodata.org/geometry/way'::text || ("a_81"."id"::text)) "C_11", 'http://linkedgeodata.org/osm/'::text "C_10", "a_83"."object" "C_5", "a_83"."property" "C_4", 'http://geovocab.org/geometry#geometry'::text "C_7", "a_84"."property" "C_6", ('http://linkedgeodata.org/triplify/way'::text || ("a_81"."id"::text)) "C_9", 'http://www.opengis.net/ont/geosparql#asWKT'::text "C_8", "a_82"."polygon" "C_15"
      FROM
        "lgd_way_tags_property" "a_83", 
        "simple_polys" "a_82", 
        "lgd_way_tags_resource_kv" "a_84", 
        "ways" "a_81"
      WHERE ("a_82"."polygon" IS NOT NULL) AND ("a_81"."id" = "a_82"."way_id") AND ("a_83"."way_id" IS NOT NULL) AND ("a_83"."object" IS NOT NULL) AND ("a_83"."property" IS NOT NULL) AND ("a_81"."id" = "a_83"."way_id") AND ("a_84"."way_id" IS NOT NULL) AND ("a_84"."object" IS NOT NULL) AND ("a_84"."property" IS NOT NULL) AND ("a_81"."id" = "a_84"."way_id") AND ("a_83"."property" = 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'::text) AND ST_Intersects("a_82"."polygon", ST_GeomFromText('POLYGON((7.3 44.5, 8.5 44.5, 8.5 45.5, 7.3 45.5, 7.3 44.5))'::text, 4326)) AND ("a_83"."object" = 'http://linkedgeodata.org/ontology/Bakery'::text) AND ("a_84"."property" = 'http://www.w3.org/2000/01/rdf-schema#label'::text)
    UNION ALL
      SELECT "a_88"."language" "C_14", "a_88"."v" "C_13", NULL::text "C_12", ('http://linkedgeodata.org/geometry/way'::text || ("a_85"."id"::text)) "C_11", 'http://linkedgeodata.org/osm/'::text "C_10", "a_87"."object" "C_5", "a_87"."property" "C_4", 'http://geovocab.org/geometry#geometry'::text "C_7", "a_88"."property" "C_6", ('http://linkedgeodata.org/triplify/way'::text || ("a_85"."id"::text)) "C_9", 'http://www.opengis.net/ont/geosparql#asWKT'::text "C_8", "a_86"."polygon" "C_15"
      FROM
        "lgd_way_tags_property" "a_87", 
        "simple_polys" "a_86", 
        "lgd_way_tags_text" "a_88", 
        "ways" "a_85"
      WHERE ("a_86"."polygon" IS NOT NULL) AND ("a_85"."id" = "a_86"."way_id") AND ("a_87"."way_id" IS NOT NULL) AND ("a_87"."object" IS NOT NULL) AND ("a_87"."property" IS NOT NULL) AND ("a_85"."id" = "a_87"."way_id") AND ("a_88"."language" IS NOT NULL) AND ("a_88"."v" IS NOT NULL) AND ("a_88"."way_id" IS NOT NULL) AND ("a_88"."property" IS NOT NULL) AND ("a_85"."id" = "a_88"."way_id") AND ("a_88"."language" = ''::text) AND ("a_87"."property" = 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'::text) AND ST_Intersects("a_86"."polygon", ST_GeomFromText('POLYGON((7.3 44.5, 8.5 44.5, 8.5 45.5, 7.3 45.5, 7.3 44.5))'::text, 4326)) AND ("a_87"."object" = 'http://linkedgeodata.org/ontology/Bakery'::text) AND ("a_88"."property" = 'http://www.w3.org/2000/01/rdf-schema#label'::text)
    UNION ALL
      SELECT NULL::text "C_14", NULL::text "C_13", "a_92"."object" "C_12", ('http://linkedgeodata.org/geometry/way'::text || ("a_89"."id"::text)) "C_11", 'http://linkedgeodata.org/osm/'::text "C_10", "a_91"."object" "C_5", "a_91"."property" "C_4", 'http://geovocab.org/geometry#geometry'::text "C_7", "a_92"."property" "C_6", ('http://linkedgeodata.org/triplify/way'::text || ("a_89"."id"::text)) "C_9", 'http://www.opengis.net/ont/geosparql#asWKT'::text "C_8", "a_90"."polygon" "C_15"
      FROM
        "ways" "a_89", 
        "simple_polys" "a_90", 
        "lgd_way_tags_resource_k" "a_92", 
        "lgd_way_tags_property" "a_91"
      WHERE ("a_90"."polygon" IS NOT NULL) AND ("a_89"."id" = "a_90"."way_id") AND ("a_91"."way_id" IS NOT NULL) AND ("a_91"."object" IS NOT NULL) AND ("a_91"."property" IS NOT NULL) AND ("a_89"."id" = "a_91"."way_id") AND ("a_92"."way_id" IS NOT NULL) AND ("a_92"."object" IS NOT NULL) AND ("a_92"."property" IS NOT NULL) AND ("a_89"."id" = "a_92"."way_id") AND ("a_91"."property" = 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'::text) AND ST_Intersects("a_90"."polygon", ST_GeomFromText('POLYGON((7.3 44.5, 8.5 44.5, 8.5 45.5, 7.3 45.5, 7.3 44.5))'::text, 4326)) AND ("a_91"."object" = 'http://linkedgeodata.org/ontology/Bakery'::text) AND ("a_92"."property" = 'http://www.w3.org/2000/01/rdf-schema#label'::text)
    UNION ALL
      SELECT NULL::text "C_14", NULL::text "C_13", "a_96"."object" "C_12", ('http://linkedgeodata.org/geometry/way'::text || ("a_93"."id"::text)) "C_11", 'http://linkedgeodata.org/osm/'::text "C_10", "a_95"."object" "C_5", "a_95"."property" "C_4", 'http://geovocab.org/geometry#geometry'::text "C_7", "a_96"."property" "C_6", ('http://linkedgeodata.org/triplify/way'::text || ("a_93"."id"::text)) "C_9", 'http://www.opengis.net/ont/geosparql#asWKT'::text "C_8", "a_94"."polygon" "C_15"
      FROM
        "simple_polys" "a_94", 
        "ways" "a_93", 
        "lgd_way_tags_property" "a_96", 
        "lgd_way_tags_property" "a_95"
      WHERE ("a_94"."polygon" IS NOT NULL) AND ("a_93"."id" = "a_94"."way_id") AND ("a_95"."way_id" IS NOT NULL) AND ("a_95"."object" IS NOT NULL) AND ("a_95"."property" IS NOT NULL) AND ("a_93"."id" = "a_95"."way_id") AND ("a_96"."way_id" IS NOT NULL) AND ("a_96"."object" IS NOT NULL) AND ("a_96"."property" IS NOT NULL) AND ("a_93"."id" = "a_96"."way_id") AND ("a_95"."property" = 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'::text) AND ST_Intersects("a_94"."polygon", ST_GeomFromText('POLYGON((7.3 44.5, 8.5 44.5, 8.5 45.5, 7.3 45.5, 7.3 44.5))'::text, 4326)) AND ("a_95"."object" = 'http://linkedgeodata.org/ontology/Bakery'::text) AND ("a_96"."property" = 'http://www.w3.org/2000/01/rdf-schema#label'::text)
    UNION ALL
      SELECT NULL::text "C_14", NULL::text "C_13", "a_100"."object" "C_12", ('http://linkedgeodata.org/geometry/way'::text || ("a_97"."id"::text)) "C_11", 'http://linkedgeodata.org/osm/'::text "C_10", "a_99"."object" "C_5", "a_99"."property" "C_4", 'http://geovocab.org/geometry#geometry'::text "C_7", "a_100"."property" "C_6", ('http://linkedgeodata.org/triplify/way'::text || ("a_97"."id"::text)) "C_9", 'http://www.opengis.net/ont/geosparql#asWKT'::text "C_8", "a_98"."linestring" "C_15"
      FROM
        (SELECT id, linestring FROM ways a WHERE a.id NOT IN (SELECT way_id FROM simple_polys)) a_98, 
        "ways" "a_97", 
        "lgd_way_tags_resource_kv" "a_100", 
        "lgd_way_tags_resource_kv" "a_99"
      WHERE ("a_98"."linestring" IS NOT NULL) AND ("a_97"."id" = "a_98"."id") AND ("a_99"."way_id" IS NOT NULL) AND ("a_99"."object" IS NOT NULL) AND ("a_99"."property" IS NOT NULL) AND ("a_97"."id" = "a_99"."way_id") AND ("a_100"."way_id" IS NOT NULL) AND ("a_100"."object" IS NOT NULL) AND ("a_100"."property" IS NOT NULL) AND ("a_97"."id" = "a_100"."way_id") AND ("a_99"."property" = 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'::text) AND ST_Intersects("a_98"."linestring", ST_GeomFromText('POLYGON((7.3 44.5, 8.5 44.5, 8.5 45.5, 7.3 45.5, 7.3 44.5))'::text, 4326)) AND ("a_99"."object" = 'http://linkedgeodata.org/ontology/Bakery'::text) AND ("a_100"."property" = 'http://www.w3.org/2000/01/rdf-schema#label'::text)
    UNION ALL
      SELECT "a_104"."language" "C_14", "a_104"."v" "C_13", NULL::text "C_12", ('http://linkedgeodata.org/geometry/way'::text || ("a_101"."id"::text)) "C_11", 'http://linkedgeodata.org/osm/'::text "C_10", "a_103"."object" "C_5", "a_103"."property" "C_4", 'http://geovocab.org/geometry#geometry'::text "C_7", "a_104"."property" "C_6", ('http://linkedgeodata.org/triplify/way'::text || ("a_101"."id"::text)) "C_9", 'http://www.opengis.net/ont/geosparql#asWKT'::text "C_8", "a_102"."linestring" "C_15"
      FROM
        "lgd_way_tags_resource_kv" "a_103", 
        "lgd_way_tags_text" "a_104", 
        "ways" "a_101", 
        (SELECT id, linestring FROM ways a WHERE a.id NOT IN (SELECT way_id FROM simple_polys)) a_102
      WHERE ("a_102"."linestring" IS NOT NULL) AND ("a_101"."id" = "a_102"."id") AND ("a_103"."way_id" IS NOT NULL) AND ("a_103"."object" IS NOT NULL) AND ("a_103"."property" IS NOT NULL) AND ("a_101"."id" = "a_103"."way_id") AND ("a_104"."language" IS NOT NULL) AND ("a_104"."v" IS NOT NULL) AND ("a_104"."way_id" IS NOT NULL) AND ("a_104"."property" IS NOT NULL) AND ("a_101"."id" = "a_104"."way_id") AND ("a_104"."language" = ''::text) AND ("a_103"."property" = 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'::text) AND ST_Intersects("a_102"."linestring", ST_GeomFromText('POLYGON((7.3 44.5, 8.5 44.5, 8.5 45.5, 7.3 45.5, 7.3 44.5))'::text, 4326)) AND ("a_103"."object" = 'http://linkedgeodata.org/ontology/Bakery'::text) AND ("a_104"."property" = 'http://www.w3.org/2000/01/rdf-schema#label'::text)
    UNION ALL
      SELECT NULL::text "C_14", NULL::text "C_13", "a_108"."object" "C_12", ('http://linkedgeodata.org/geometry/way'::text || ("a_105"."id"::text)) "C_11", 'http://linkedgeodata.org/osm/'::text "C_10", "a_107"."object" "C_5", "a_107"."property" "C_4", 'http://geovocab.org/geometry#geometry'::text "C_7", "a_108"."property" "C_6", ('http://linkedgeodata.org/triplify/way'::text || ("a_105"."id"::text)) "C_9", 'http://www.opengis.net/ont/geosparql#asWKT'::text "C_8", "a_106"."linestring" "C_15"
      FROM
        "lgd_way_tags_resource_kv" "a_107", 
        "lgd_way_tags_resource_k" "a_108", 
        "ways" "a_105", 
        (SELECT id, linestring FROM ways a WHERE a.id NOT IN (SELECT way_id FROM simple_polys)) a_106
      WHERE ("a_106"."linestring" IS NOT NULL) AND ("a_105"."id" = "a_106"."id") AND ("a_107"."way_id" IS NOT NULL) AND ("a_107"."object" IS NOT NULL) AND ("a_107"."property" IS NOT NULL) AND ("a_105"."id" = "a_107"."way_id") AND ("a_108"."way_id" IS NOT NULL) AND ("a_108"."object" IS NOT NULL) AND ("a_108"."property" IS NOT NULL) AND ("a_105"."id" = "a_108"."way_id") AND ("a_107"."property" = 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'::text) AND ST_Intersects("a_106"."linestring", ST_GeomFromText('POLYGON((7.3 44.5, 8.5 44.5, 8.5 45.5, 7.3 45.5, 7.3 44.5))'::text, 4326)) AND ("a_107"."object" = 'http://linkedgeodata.org/ontology/Bakery'::text) AND ("a_108"."property" = 'http://www.w3.org/2000/01/rdf-schema#label'::text)
    UNION ALL
      SELECT NULL::text "C_14", NULL::text "C_13", "a_112"."object" "C_12", ('http://linkedgeodata.org/geometry/way'::text || ("a_109"."id"::text)) "C_11", 'http://linkedgeodata.org/osm/'::text "C_10", "a_111"."object" "C_5", "a_111"."property" "C_4", 'http://geovocab.org/geometry#geometry'::text "C_7", "a_112"."property" "C_6", ('http://linkedgeodata.org/triplify/way'::text || ("a_109"."id"::text)) "C_9", 'http://www.opengis.net/ont/geosparql#asWKT'::text "C_8", "a_110"."linestring" "C_15"
      FROM
        (SELECT id, linestring FROM ways a WHERE a.id NOT IN (SELECT way_id FROM simple_polys)) a_110, 
        "lgd_way_tags_resource_kv" "a_111", 
        "lgd_way_tags_property" "a_112", 
        "ways" "a_109"
      WHERE ("a_110"."linestring" IS NOT NULL) AND ("a_109"."id" = "a_110"."id") AND ("a_111"."way_id" IS NOT NULL) AND ("a_111"."object" IS NOT NULL) AND ("a_111"."property" IS NOT NULL) AND ("a_109"."id" = "a_111"."way_id") AND ("a_112"."way_id" IS NOT NULL) AND ("a_112"."object" IS NOT NULL) AND ("a_112"."property" IS NOT NULL) AND ("a_109"."id" = "a_112"."way_id") AND ("a_111"."property" = 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'::text) AND ST_Intersects("a_110"."linestring", ST_GeomFromText('POLYGON((7.3 44.5, 8.5 44.5, 8.5 45.5, 7.3 45.5, 7.3 44.5))'::text, 4326)) AND ("a_111"."object" = 'http://linkedgeodata.org/ontology/Bakery'::text) AND ("a_112"."property" = 'http://www.w3.org/2000/01/rdf-schema#label'::text)
    UNION ALL
      SELECT NULL::text "C_14", NULL::text "C_13", "a_116"."object" "C_12", ('http://linkedgeodata.org/geometry/way'::text || ("a_113"."id"::text)) "C_11", 'http://linkedgeodata.org/osm/'::text "C_10", "a_115"."object" "C_5", "a_115"."property" "C_4", 'http://geovocab.org/geometry#geometry'::text "C_7", "a_116"."property" "C_6", ('http://linkedgeodata.org/triplify/way'::text || ("a_113"."id"::text)) "C_9", 'http://www.opengis.net/ont/geosparql#asWKT'::text "C_8", "a_114"."linestring" "C_15"
      FROM
        (SELECT id, linestring FROM ways a WHERE a.id NOT IN (SELECT way_id FROM simple_polys)) a_114, 
        "lgd_way_tags_resource_k" "a_115", 
        "ways" "a_113", 
        "lgd_way_tags_resource_kv" "a_116"
      WHERE ("a_114"."linestring" IS NOT NULL) AND ("a_113"."id" = "a_114"."id") AND ("a_115"."way_id" IS NOT NULL) AND ("a_115"."object" IS NOT NULL) AND ("a_115"."property" IS NOT NULL) AND ("a_113"."id" = "a_115"."way_id") AND ("a_116"."way_id" IS NOT NULL) AND ("a_116"."object" IS NOT NULL) AND ("a_116"."property" IS NOT NULL) AND ("a_113"."id" = "a_116"."way_id") AND ("a_115"."property" = 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'::text) AND ST_Intersects("a_114"."linestring", ST_GeomFromText('POLYGON((7.3 44.5, 8.5 44.5, 8.5 45.5, 7.3 45.5, 7.3 44.5))'::text, 4326)) AND ("a_115"."object" = 'http://linkedgeodata.org/ontology/Bakery'::text) AND ("a_116"."property" = 'http://www.w3.org/2000/01/rdf-schema#label'::text)
    UNION ALL
      SELECT "a_120"."language" "C_14", "a_120"."v" "C_13", NULL::text "C_12", ('http://linkedgeodata.org/geometry/way'::text || ("a_117"."id"::text)) "C_11", 'http://linkedgeodata.org/osm/'::text "C_10", "a_119"."object" "C_5", "a_119"."property" "C_4", 'http://geovocab.org/geometry#geometry'::text "C_7", "a_120"."property" "C_6", ('http://linkedgeodata.org/triplify/way'::text || ("a_117"."id"::text)) "C_9", 'http://www.opengis.net/ont/geosparql#asWKT'::text "C_8", "a_118"."linestring" "C_15"
      FROM
        "lgd_way_tags_text" "a_120", 
        (SELECT id, linestring FROM ways a WHERE a.id NOT IN (SELECT way_id FROM simple_polys)) a_118, 
        "lgd_way_tags_resource_k" "a_119", 
        "ways" "a_117"
      WHERE ("a_118"."linestring" IS NOT NULL) AND ("a_117"."id" = "a_118"."id") AND ("a_119"."way_id" IS NOT NULL) AND ("a_119"."object" IS NOT NULL) AND ("a_119"."property" IS NOT NULL) AND ("a_117"."id" = "a_119"."way_id") AND ("a_120"."language" IS NOT NULL) AND ("a_120"."v" IS NOT NULL) AND ("a_120"."way_id" IS NOT NULL) AND ("a_120"."property" IS NOT NULL) AND ("a_117"."id" = "a_120"."way_id") AND ("a_120"."language" = ''::text) AND ("a_119"."property" = 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'::text) AND ST_Intersects("a_118"."linestring", ST_GeomFromText('POLYGON((7.3 44.5, 8.5 44.5, 8.5 45.5, 7.3 45.5, 7.3 44.5))'::text, 4326)) AND ("a_119"."object" = 'http://linkedgeodata.org/ontology/Bakery'::text) AND ("a_120"."property" = 'http://www.w3.org/2000/01/rdf-schema#label'::text)
    UNION ALL
      SELECT NULL::text "C_14", NULL::text "C_13", "a_124"."object" "C_12", ('http://linkedgeodata.org/geometry/way'::text || ("a_121"."id"::text)) "C_11", 'http://linkedgeodata.org/osm/'::text "C_10", "a_123"."object" "C_5", "a_123"."property" "C_4", 'http://geovocab.org/geometry#geometry'::text "C_7", "a_124"."property" "C_6", ('http://linkedgeodata.org/triplify/way'::text || ("a_121"."id"::text)) "C_9", 'http://www.opengis.net/ont/geosparql#asWKT'::text "C_8", "a_122"."linestring" "C_15"
      FROM
        "ways" "a_121", 
        (SELECT id, linestring FROM ways a WHERE a.id NOT IN (SELECT way_id FROM simple_polys)) a_122, 
        "lgd_way_tags_resource_k" "a_123", 
        "lgd_way_tags_resource_k" "a_124"
      WHERE ("a_122"."linestring" IS NOT NULL) AND ("a_121"."id" = "a_122"."id") AND ("a_123"."way_id" IS NOT NULL) AND ("a_123"."object" IS NOT NULL) AND ("a_123"."property" IS NOT NULL) AND ("a_121"."id" = "a_123"."way_id") AND ("a_124"."way_id" IS NOT NULL) AND ("a_124"."object" IS NOT NULL) AND ("a_124"."property" IS NOT NULL) AND ("a_121"."id" = "a_124"."way_id") AND ("a_123"."property" = 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'::text) AND ST_Intersects("a_122"."linestring", ST_GeomFromText('POLYGON((7.3 44.5, 8.5 44.5, 8.5 45.5, 7.3 45.5, 7.3 44.5))'::text, 4326)) AND ("a_123"."object" = 'http://linkedgeodata.org/ontology/Bakery'::text) AND ("a_124"."property" = 'http://www.w3.org/2000/01/rdf-schema#label'::text)
    UNION ALL
      SELECT NULL::text "C_14", NULL::text "C_13", "a_128"."object" "C_12", ('http://linkedgeodata.org/geometry/way'::text || ("a_125"."id"::text)) "C_11", 'http://linkedgeodata.org/osm/'::text "C_10", "a_127"."object" "C_5", "a_127"."property" "C_4", 'http://geovocab.org/geometry#geometry'::text "C_7", "a_128"."property" "C_6", ('http://linkedgeodata.org/triplify/way'::text || ("a_125"."id"::text)) "C_9", 'http://www.opengis.net/ont/geosparql#asWKT'::text "C_8", "a_126"."linestring" "C_15"
      FROM
        "ways" "a_125", 
        (SELECT id, linestring FROM ways a WHERE a.id NOT IN (SELECT way_id FROM simple_polys)) a_126, 
        "lgd_way_tags_resource_k" "a_127", 
        "lgd_way_tags_property" "a_128"
      WHERE ("a_126"."linestring" IS NOT NULL) AND ("a_125"."id" = "a_126"."id") AND ("a_127"."way_id" IS NOT NULL) AND ("a_127"."object" IS NOT NULL) AND ("a_127"."property" IS NOT NULL) AND ("a_125"."id" = "a_127"."way_id") AND ("a_128"."way_id" IS NOT NULL) AND ("a_128"."object" IS NOT NULL) AND ("a_128"."property" IS NOT NULL) AND ("a_125"."id" = "a_128"."way_id") AND ("a_127"."property" = 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'::text) AND ST_Intersects("a_126"."linestring", ST_GeomFromText('POLYGON((7.3 44.5, 8.5 44.5, 8.5 45.5, 7.3 45.5, 7.3 44.5))'::text, 4326)) AND ("a_127"."object" = 'http://linkedgeodata.org/ontology/Bakery'::text) AND ("a_128"."property" = 'http://www.w3.org/2000/01/rdf-schema#label'::text)
    UNION ALL
      SELECT NULL::text "C_14", NULL::text "C_13", "a_132"."object" "C_12", ('http://linkedgeodata.org/geometry/way'::text || ("a_129"."id"::text)) "C_11", 'http://linkedgeodata.org/osm/'::text "C_10", "a_131"."object" "C_5", "a_131"."property" "C_4", 'http://geovocab.org/geometry#geometry'::text "C_7", "a_132"."property" "C_6", ('http://linkedgeodata.org/triplify/way'::text || ("a_129"."id"::text)) "C_9", 'http://www.opengis.net/ont/geosparql#asWKT'::text "C_8", "a_130"."linestring" "C_15"
      FROM
        "lgd_way_tags_resource_kv" "a_132", 
        (SELECT id, linestring FROM ways a WHERE a.id NOT IN (SELECT way_id FROM simple_polys)) a_130, 
        "lgd_way_tags_property" "a_131", 
        "ways" "a_129"
      WHERE ("a_130"."linestring" IS NOT NULL) AND ("a_129"."id" = "a_130"."id") AND ("a_131"."way_id" IS NOT NULL) AND ("a_131"."object" IS NOT NULL) AND ("a_131"."property" IS NOT NULL) AND ("a_129"."id" = "a_131"."way_id") AND ("a_132"."way_id" IS NOT NULL) AND ("a_132"."object" IS NOT NULL) AND ("a_132"."property" IS NOT NULL) AND ("a_129"."id" = "a_132"."way_id") AND ("a_131"."property" = 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'::text) AND ST_Intersects("a_130"."linestring", ST_GeomFromText('POLYGON((7.3 44.5, 8.5 44.5, 8.5 45.5, 7.3 45.5, 7.3 44.5))'::text, 4326)) AND ("a_131"."object" = 'http://linkedgeodata.org/ontology/Bakery'::text) AND ("a_132"."property" = 'http://www.w3.org/2000/01/rdf-schema#label'::text)
    UNION ALL
      SELECT "a_136"."language" "C_14", "a_136"."v" "C_13", NULL::text "C_12", ('http://linkedgeodata.org/geometry/way'::text || ("a_133"."id"::text)) "C_11", 'http://linkedgeodata.org/osm/'::text "C_10", "a_135"."object" "C_5", "a_135"."property" "C_4", 'http://geovocab.org/geometry#geometry'::text "C_7", "a_136"."property" "C_6", ('http://linkedgeodata.org/triplify/way'::text || ("a_133"."id"::text)) "C_9", 'http://www.opengis.net/ont/geosparql#asWKT'::text "C_8", "a_134"."linestring" "C_15"
      FROM
        "ways" "a_133", 
        "lgd_way_tags_text" "a_136", 
        (SELECT id, linestring FROM ways a WHERE a.id NOT IN (SELECT way_id FROM simple_polys)) a_134, 
        "lgd_way_tags_property" "a_135"
      WHERE ("a_134"."linestring" IS NOT NULL) AND ("a_133"."id" = "a_134"."id") AND ("a_135"."way_id" IS NOT NULL) AND ("a_135"."object" IS NOT NULL) AND ("a_135"."property" IS NOT NULL) AND ("a_133"."id" = "a_135"."way_id") AND ("a_136"."language" IS NOT NULL) AND ("a_136"."v" IS NOT NULL) AND ("a_136"."way_id" IS NOT NULL) AND ("a_136"."property" IS NOT NULL) AND ("a_133"."id" = "a_136"."way_id") AND ("a_136"."language" = ''::text) AND ("a_135"."property" = 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'::text) AND ST_Intersects("a_134"."linestring", ST_GeomFromText('POLYGON((7.3 44.5, 8.5 44.5, 8.5 45.5, 7.3 45.5, 7.3 44.5))'::text, 4326)) AND ("a_135"."object" = 'http://linkedgeodata.org/ontology/Bakery'::text) AND ("a_136"."property" = 'http://www.w3.org/2000/01/rdf-schema#label'::text)
    UNION ALL
      SELECT NULL::text "C_14", NULL::text "C_13", "a_140"."object" "C_12", ('http://linkedgeodata.org/geometry/way'::text || ("a_137"."id"::text)) "C_11", 'http://linkedgeodata.org/osm/'::text "C_10", "a_139"."object" "C_5", "a_139"."property" "C_4", 'http://geovocab.org/geometry#geometry'::text "C_7", "a_140"."property" "C_6", ('http://linkedgeodata.org/triplify/way'::text || ("a_137"."id"::text)) "C_9", 'http://www.opengis.net/ont/geosparql#asWKT'::text "C_8", "a_138"."linestring" "C_15"
      FROM
        "ways" "a_137", 
        (SELECT id, linestring FROM ways a WHERE a.id NOT IN (SELECT way_id FROM simple_polys)) a_138, 
        "lgd_way_tags_property" "a_139", 
        "lgd_way_tags_resource_k" "a_140"
      WHERE ("a_138"."linestring" IS NOT NULL) AND ("a_137"."id" = "a_138"."id") AND ("a_139"."way_id" IS NOT NULL) AND ("a_139"."object" IS NOT NULL) AND ("a_139"."property" IS NOT NULL) AND ("a_137"."id" = "a_139"."way_id") AND ("a_140"."way_id" IS NOT NULL) AND ("a_140"."object" IS NOT NULL) AND ("a_140"."property" IS NOT NULL) AND ("a_137"."id" = "a_140"."way_id") AND ("a_139"."property" = 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'::text) AND ST_Intersects("a_138"."linestring", ST_GeomFromText('POLYGON((7.3 44.5, 8.5 44.5, 8.5 45.5, 7.3 45.5, 7.3 44.5))'::text, 4326)) AND ("a_139"."object" = 'http://linkedgeodata.org/ontology/Bakery'::text) AND ("a_140"."property" = 'http://www.w3.org/2000/01/rdf-schema#label'::text)
    UNION ALL
      SELECT NULL::text "C_14", NULL::text "C_13", "a_144"."object" "C_12", ('http://linkedgeodata.org/geometry/way'::text || ("a_141"."id"::text)) "C_11", 'http://linkedgeodata.org/osm/'::text "C_10", "a_143"."object" "C_5", "a_143"."property" "C_4", 'http://geovocab.org/geometry#geometry'::text "C_7", "a_144"."property" "C_6", ('http://linkedgeodata.org/triplify/way'::text || ("a_141"."id"::text)) "C_9", 'http://www.opengis.net/ont/geosparql#asWKT'::text "C_8", "a_142"."linestring" "C_15"
      FROM
        "lgd_way_tags_property" "a_143", 
        "lgd_way_tags_property" "a_144", 
        "ways" "a_141", 
        (SELECT id, linestring FROM ways a WHERE a.id NOT IN (SELECT way_id FROM simple_polys)) a_142
      WHERE ("a_142"."linestring" IS NOT NULL) AND ("a_141"."id" = "a_142"."id") AND ("a_143"."way_id" IS NOT NULL) AND ("a_143"."object" IS NOT NULL) AND ("a_143"."property" IS NOT NULL) AND ("a_141"."id" = "a_143"."way_id") AND ("a_144"."way_id" IS NOT NULL) AND ("a_144"."object" IS NOT NULL) AND ("a_144"."property" IS NOT NULL) AND ("a_141"."id" = "a_144"."way_id") AND ("a_143"."property" = 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'::text) AND ST_Intersects("a_142"."linestring", ST_GeomFromText('POLYGON((7.3 44.5, 8.5 44.5, 8.5 45.5, 7.3 45.5, 7.3 44.5))'::text, 4326)) AND ("a_143"."object" = 'http://linkedgeodata.org/ontology/Bakery'::text) AND ("a_144"."property" = 'http://www.w3.org/2000/01/rdf-schema#label'::text)
    UNION ALL
      SELECT NULL::text "C_14", NULL::text "C_13", "a_148"."object" "C_12", ('http://linkedgeodata.org/geometry/node'::text || ("a_145"."id"::text)) "C_11", 'http://linkedgeodata.org/osm/'::text "C_10", "a_147"."object" "C_5", "a_147"."property" "C_4", 'http://geovocab.org/geometry#geometry'::text "C_7", "a_148"."property" "C_6", ('http://linkedgeodata.org/triplify/node'::text || ("a_145"."id"::text)) "C_9", 'http://www.opengis.net/ont/geosparql#asWKT'::text "C_8", "a_146"."geom" "C_15"
      FROM
        "lgd_node_tags_property" "a_147", 
        "lgd_node_tags_property" "a_148", 
        (SELECT *, ST_X(geom::geometry) x, ST_Y(geom::geometry) y, ST_X(geom::geometry)::float4::text x_text, ST_Y(geom::geometry)::float4::text y_text FROM nodes) a_145, 
        (SELECT *, ST_X(geom::geometry) x, ST_Y(geom::geometry) y, ST_X(geom::geometry)::float4::text x_text, ST_Y(geom::geometry)::float4::text y_text FROM nodes) a_146
      WHERE ("a_146"."geom" IS NOT NULL) AND ("a_145"."id" = "a_146"."id") AND ("a_147"."node_id" IS NOT NULL) AND ("a_147"."object" IS NOT NULL) AND ("a_147"."property" IS NOT NULL) AND ("a_145"."id" = "a_147"."node_id") AND ("a_148"."node_id" IS NOT NULL) AND ("a_148"."object" IS NOT NULL) AND ("a_148"."property" IS NOT NULL) AND ("a_145"."id" = "a_148"."node_id") AND ("a_147"."property" = 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'::text) AND ST_Intersects("a_146"."geom", ST_GeomFromText('POLYGON((7.3 44.5, 8.5 44.5, 8.5 45.5, 7.3 45.5, 7.3 44.5))'::text, 4326)) AND ("a_147"."object" = 'http://linkedgeodata.org/ontology/Bakery'::text) AND ("a_148"."property" = 'http://www.w3.org/2000/01/rdf-schema#label'::text)
    UNION ALL
      SELECT "a_152"."language" "C_14", "a_152"."v" "C_13", NULL::text "C_12", ('http://linkedgeodata.org/geometry/node'::text || ("a_149"."id"::text)) "C_11", 'http://linkedgeodata.org/osm/'::text "C_10", "a_151"."object" "C_5", "a_151"."property" "C_4", 'http://geovocab.org/geometry#geometry'::text "C_7", "a_152"."property" "C_6", ('http://linkedgeodata.org/triplify/node'::text || ("a_149"."id"::text)) "C_9", 'http://www.opengis.net/ont/geosparql#asWKT'::text "C_8", "a_150"."geom" "C_15"
      FROM
        "lgd_node_tags_text" "a_152", 
        (SELECT *, ST_X(geom::geometry) x, ST_Y(geom::geometry) y, ST_X(geom::geometry)::float4::text x_text, ST_Y(geom::geometry)::float4::text y_text FROM nodes) a_149, 
        (SELECT *, ST_X(geom::geometry) x, ST_Y(geom::geometry) y, ST_X(geom::geometry)::float4::text x_text, ST_Y(geom::geometry)::float4::text y_text FROM nodes) a_150, 
        "lgd_node_tags_property" "a_151"
      WHERE ("a_150"."geom" IS NOT NULL) AND ("a_149"."id" = "a_150"."id") AND ("a_151"."node_id" IS NOT NULL) AND ("a_151"."object" IS NOT NULL) AND ("a_151"."property" IS NOT NULL) AND ("a_149"."id" = "a_151"."node_id") AND ("a_152"."node_id" IS NOT NULL) AND ("a_152"."language" IS NOT NULL) AND ("a_152"."v" IS NOT NULL) AND ("a_152"."property" IS NOT NULL) AND ("a_149"."id" = "a_152"."node_id") AND ("a_152"."language" = ''::text) AND ("a_151"."property" = 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'::text) AND ST_Intersects("a_150"."geom", ST_GeomFromText('POLYGON((7.3 44.5, 8.5 44.5, 8.5 45.5, 7.3 45.5, 7.3 44.5))'::text, 4326)) AND ("a_151"."object" = 'http://linkedgeodata.org/ontology/Bakery'::text) AND ("a_152"."property" = 'http://www.w3.org/2000/01/rdf-schema#label'::text)
    UNION ALL
      SELECT NULL::text "C_14", NULL::text "C_13", "a_156"."object" "C_12", ('http://linkedgeodata.org/geometry/node'::text || ("a_153"."id"::text)) "C_11", 'http://linkedgeodata.org/osm/'::text "C_10", "a_155"."object" "C_5", "a_155"."property" "C_4", 'http://geovocab.org/geometry#geometry'::text "C_7", "a_156"."property" "C_6", ('http://linkedgeodata.org/triplify/node'::text || ("a_153"."id"::text)) "C_9", 'http://www.opengis.net/ont/geosparql#asWKT'::text "C_8", "a_154"."geom" "C_15"
      FROM
        (SELECT *, ST_X(geom::geometry) x, ST_Y(geom::geometry) y, ST_X(geom::geometry)::float4::text x_text, ST_Y(geom::geometry)::float4::text y_text FROM nodes) a_154, 
        "lgd_node_tags_property" "a_155", 
        (SELECT *, ST_X(geom::geometry) x, ST_Y(geom::geometry) y, ST_X(geom::geometry)::float4::text x_text, ST_Y(geom::geometry)::float4::text y_text FROM nodes) a_153, 
        "lgd_node_tags_resource_kv" "a_156"
      WHERE ("a_154"."geom" IS NOT NULL) AND ("a_153"."id" = "a_154"."id") AND ("a_155"."node_id" IS NOT NULL) AND ("a_155"."object" IS NOT NULL) AND ("a_155"."property" IS NOT NULL) AND ("a_153"."id" = "a_155"."node_id") AND ("a_156"."node_id" IS NOT NULL) AND ("a_156"."object" IS NOT NULL) AND ("a_156"."property" IS NOT NULL) AND ("a_153"."id" = "a_156"."node_id") AND ("a_155"."property" = 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'::text) AND ST_Intersects("a_154"."geom", ST_GeomFromText('POLYGON((7.3 44.5, 8.5 44.5, 8.5 45.5, 7.3 45.5, 7.3 44.5))'::text, 4326)) AND ("a_155"."object" = 'http://linkedgeodata.org/ontology/Bakery'::text) AND ("a_156"."property" = 'http://www.w3.org/2000/01/rdf-schema#label'::text)
    UNION ALL
      SELECT NULL::text "C_14", NULL::text "C_13", "a_160"."object" "C_12", ('http://linkedgeodata.org/geometry/node'::text || ("a_157"."id"::text)) "C_11", 'http://linkedgeodata.org/osm/'::text "C_10", "a_159"."object" "C_5", "a_159"."property" "C_4", 'http://geovocab.org/geometry#geometry'::text "C_7", "a_160"."property" "C_6", ('http://linkedgeodata.org/triplify/node'::text || ("a_157"."id"::text)) "C_9", 'http://www.opengis.net/ont/geosparql#asWKT'::text "C_8", "a_158"."geom" "C_15"
      FROM
        (SELECT *, ST_X(geom::geometry) x, ST_Y(geom::geometry) y, ST_X(geom::geometry)::float4::text x_text, ST_Y(geom::geometry)::float4::text y_text FROM nodes) a_158, 
        "lgd_node_tags_property" "a_159", 
        (SELECT *, ST_X(geom::geometry) x, ST_Y(geom::geometry) y, ST_X(geom::geometry)::float4::text x_text, ST_Y(geom::geometry)::float4::text y_text FROM nodes) a_157, 
        "lgd_node_tags_resource_k" "a_160"
      WHERE ("a_158"."geom" IS NOT NULL) AND ("a_157"."id" = "a_158"."id") AND ("a_159"."node_id" IS NOT NULL) AND ("a_159"."object" IS NOT NULL) AND ("a_159"."property" IS NOT NULL) AND ("a_157"."id" = "a_159"."node_id") AND ("a_160"."node_id" IS NOT NULL) AND ("a_160"."object" IS NOT NULL) AND ("a_160"."property" IS NOT NULL) AND ("a_157"."id" = "a_160"."node_id") AND ("a_159"."property" = 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'::text) AND ST_Intersects("a_158"."geom", ST_GeomFromText('POLYGON((7.3 44.5, 8.5 44.5, 8.5 45.5, 7.3 45.5, 7.3 44.5))'::text, 4326)) AND ("a_159"."object" = 'http://linkedgeodata.org/ontology/Bakery'::text) AND ("a_160"."property" = 'http://www.w3.org/2000/01/rdf-schema#label'::text)
    UNION ALL
      SELECT NULL::text "C_14", NULL::text "C_13", "a_164"."object" "C_12", ('http://linkedgeodata.org/geometry/node'::text || ("a_161"."id"::text)) "C_11", 'http://linkedgeodata.org/osm/'::text "C_10", "a_163"."object" "C_5", "a_163"."property" "C_4", 'http://geovocab.org/geometry#geometry'::text "C_7", "a_164"."property" "C_6", ('http://linkedgeodata.org/triplify/node'::text || ("a_161"."id"::text)) "C_9", 'http://www.opengis.net/ont/geosparql#asWKT'::text "C_8", "a_162"."geom" "C_15"
      FROM
        "lgd_node_tags_resource_kv" "a_163", 
        "lgd_node_tags_property" "a_164", 
        (SELECT *, ST_X(geom::geometry) x, ST_Y(geom::geometry) y, ST_X(geom::geometry)::float4::text x_text, ST_Y(geom::geometry)::float4::text y_text FROM nodes) a_161, 
        (SELECT *, ST_X(geom::geometry) x, ST_Y(geom::geometry) y, ST_X(geom::geometry)::float4::text x_text, ST_Y(geom::geometry)::float4::text y_text FROM nodes) a_162
      WHERE ("a_162"."geom" IS NOT NULL) AND ("a_161"."id" = "a_162"."id") AND ("a_163"."node_id" IS NOT NULL) AND ("a_163"."object" IS NOT NULL) AND ("a_163"."property" IS NOT NULL) AND ("a_161"."id" = "a_163"."node_id") AND ("a_164"."node_id" IS NOT NULL) AND ("a_164"."object" IS NOT NULL) AND ("a_164"."property" IS NOT NULL) AND ("a_161"."id" = "a_164"."node_id") AND ("a_163"."property" = 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'::text) AND ST_Intersects("a_162"."geom", ST_GeomFromText('POLYGON((7.3 44.5, 8.5 44.5, 8.5 45.5, 7.3 45.5, 7.3 44.5))'::text, 4326)) AND ("a_163"."object" = 'http://linkedgeodata.org/ontology/Bakery'::text) AND ("a_164"."property" = 'http://www.w3.org/2000/01/rdf-schema#label'::text)
    UNION ALL
      SELECT "a_168"."language" "C_14", "a_168"."v" "C_13", NULL::text "C_12", ('http://linkedgeodata.org/geometry/node'::text || ("a_165"."id"::text)) "C_11", 'http://linkedgeodata.org/osm/'::text "C_10", "a_167"."object" "C_5", "a_167"."property" "C_4", 'http://geovocab.org/geometry#geometry'::text "C_7", "a_168"."property" "C_6", ('http://linkedgeodata.org/triplify/node'::text || ("a_165"."id"::text)) "C_9", 'http://www.opengis.net/ont/geosparql#asWKT'::text "C_8", "a_166"."geom" "C_15"
      FROM
        (SELECT *, ST_X(geom::geometry) x, ST_Y(geom::geometry) y, ST_X(geom::geometry)::float4::text x_text, ST_Y(geom::geometry)::float4::text y_text FROM nodes) a_165, 
        (SELECT *, ST_X(geom::geometry) x, ST_Y(geom::geometry) y, ST_X(geom::geometry)::float4::text x_text, ST_Y(geom::geometry)::float4::text y_text FROM nodes) a_166, 
        "lgd_node_tags_resource_kv" "a_167", 
        "lgd_node_tags_text" "a_168"
      WHERE ("a_166"."geom" IS NOT NULL) AND ("a_165"."id" = "a_166"."id") AND ("a_167"."node_id" IS NOT NULL) AND ("a_167"."object" IS NOT NULL) AND ("a_167"."property" IS NOT NULL) AND ("a_165"."id" = "a_167"."node_id") AND ("a_168"."node_id" IS NOT NULL) AND ("a_168"."language" IS NOT NULL) AND ("a_168"."v" IS NOT NULL) AND ("a_168"."property" IS NOT NULL) AND ("a_165"."id" = "a_168"."node_id") AND ("a_168"."language" = ''::text) AND ("a_167"."property" = 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'::text) AND ST_Intersects("a_166"."geom", ST_GeomFromText('POLYGON((7.3 44.5, 8.5 44.5, 8.5 45.5, 7.3 45.5, 7.3 44.5))'::text, 4326)) AND ("a_167"."object" = 'http://linkedgeodata.org/ontology/Bakery'::text) AND ("a_168"."property" = 'http://www.w3.org/2000/01/rdf-schema#label'::text)
    UNION ALL
      SELECT NULL::text "C_14", NULL::text "C_13", "a_172"."object" "C_12", ('http://linkedgeodata.org/geometry/node'::text || ("a_169"."id"::text)) "C_11", 'http://linkedgeodata.org/osm/'::text "C_10", "a_171"."object" "C_5", "a_171"."property" "C_4", 'http://geovocab.org/geometry#geometry'::text "C_7", "a_172"."property" "C_6", ('http://linkedgeodata.org/triplify/node'::text || ("a_169"."id"::text)) "C_9", 'http://www.opengis.net/ont/geosparql#asWKT'::text "C_8", "a_170"."geom" "C_15"
      FROM
        (SELECT *, ST_X(geom::geometry) x, ST_Y(geom::geometry) y, ST_X(geom::geometry)::float4::text x_text, ST_Y(geom::geometry)::float4::text y_text FROM nodes) a_169, 
        "lgd_node_tags_resource_kv" "a_172", 
        (SELECT *, ST_X(geom::geometry) x, ST_Y(geom::geometry) y, ST_X(geom::geometry)::float4::text x_text, ST_Y(geom::geometry)::float4::text y_text FROM nodes) a_170, 
        "lgd_node_tags_resource_kv" "a_171"
      WHERE ("a_170"."geom" IS NOT NULL) AND ("a_169"."id" = "a_170"."id") AND ("a_171"."node_id" IS NOT NULL) AND ("a_171"."object" IS NOT NULL) AND ("a_171"."property" IS NOT NULL) AND ("a_169"."id" = "a_171"."node_id") AND ("a_172"."node_id" IS NOT NULL) AND ("a_172"."object" IS NOT NULL) AND ("a_172"."property" IS NOT NULL) AND ("a_169"."id" = "a_172"."node_id") AND ("a_171"."property" = 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'::text) AND ST_Intersects("a_170"."geom", ST_GeomFromText('POLYGON((7.3 44.5, 8.5 44.5, 8.5 45.5, 7.3 45.5, 7.3 44.5))'::text, 4326)) AND ("a_171"."object" = 'http://linkedgeodata.org/ontology/Bakery'::text) AND ("a_172"."property" = 'http://www.w3.org/2000/01/rdf-schema#label'::text)
    UNION ALL
      SELECT NULL::text "C_14", NULL::text "C_13", "a_176"."object" "C_12", ('http://linkedgeodata.org/geometry/node'::text || ("a_173"."id"::text)) "C_11", 'http://linkedgeodata.org/osm/'::text "C_10", "a_175"."object" "C_5", "a_175"."property" "C_4", 'http://geovocab.org/geometry#geometry'::text "C_7", "a_176"."property" "C_6", ('http://linkedgeodata.org/triplify/node'::text || ("a_173"."id"::text)) "C_9", 'http://www.opengis.net/ont/geosparql#asWKT'::text "C_8", "a_174"."geom" "C_15"
      FROM
        "lgd_node_tags_resource_k" "a_176", 
        (SELECT *, ST_X(geom::geometry) x, ST_Y(geom::geometry) y, ST_X(geom::geometry)::float4::text x_text, ST_Y(geom::geometry)::float4::text y_text FROM nodes) a_174, 
        "lgd_node_tags_resource_kv" "a_175", 
        (SELECT *, ST_X(geom::geometry) x, ST_Y(geom::geometry) y, ST_X(geom::geometry)::float4::text x_text, ST_Y(geom::geometry)::float4::text y_text FROM nodes) a_173
      WHERE ("a_174"."geom" IS NOT NULL) AND ("a_173"."id" = "a_174"."id") AND ("a_175"."node_id" IS NOT NULL) AND ("a_175"."object" IS NOT NULL) AND ("a_175"."property" IS NOT NULL) AND ("a_173"."id" = "a_175"."node_id") AND ("a_176"."node_id" IS NOT NULL) AND ("a_176"."object" IS NOT NULL) AND ("a_176"."property" IS NOT NULL) AND ("a_173"."id" = "a_176"."node_id") AND ("a_175"."property" = 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'::text) AND ST_Intersects("a_174"."geom", ST_GeomFromText('POLYGON((7.3 44.5, 8.5 44.5, 8.5 45.5, 7.3 45.5, 7.3 44.5))'::text, 4326)) AND ("a_175"."object" = 'http://linkedgeodata.org/ontology/Bakery'::text) AND ("a_176"."property" = 'http://www.w3.org/2000/01/rdf-schema#label'::text)
    UNION ALL
      SELECT NULL::text "C_14", NULL::text "C_13", "a_180"."object" "C_12", ('http://linkedgeodata.org/geometry/node'::text || ("a_177"."id"::text)) "C_11", 'http://linkedgeodata.org/osm/'::text "C_10", "a_179"."object" "C_5", "a_179"."property" "C_4", 'http://geovocab.org/geometry#geometry'::text "C_7", "a_180"."property" "C_6", ('http://linkedgeodata.org/triplify/node'::text || ("a_177"."id"::text)) "C_9", 'http://www.opengis.net/ont/geosparql#asWKT'::text "C_8", "a_178"."geom" "C_15"
      FROM
        (SELECT *, ST_X(geom::geometry) x, ST_Y(geom::geometry) y, ST_X(geom::geometry)::float4::text x_text, ST_Y(geom::geometry)::float4::text y_text FROM nodes) a_177, 
        (SELECT *, ST_X(geom::geometry) x, ST_Y(geom::geometry) y, ST_X(geom::geometry)::float4::text x_text, ST_Y(geom::geometry)::float4::text y_text FROM nodes) a_178, 
        "lgd_node_tags_resource_k" "a_179", 
        "lgd_node_tags_property" "a_180"
      WHERE ("a_178"."geom" IS NOT NULL) AND ("a_177"."id" = "a_178"."id") AND ("a_179"."node_id" IS NOT NULL) AND ("a_179"."object" IS NOT NULL) AND ("a_179"."property" IS NOT NULL) AND ("a_177"."id" = "a_179"."node_id") AND ("a_180"."node_id" IS NOT NULL) AND ("a_180"."object" IS NOT NULL) AND ("a_180"."property" IS NOT NULL) AND ("a_177"."id" = "a_180"."node_id") AND ("a_179"."property" = 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'::text) AND ST_Intersects("a_178"."geom", ST_GeomFromText('POLYGON((7.3 44.5, 8.5 44.5, 8.5 45.5, 7.3 45.5, 7.3 44.5))'::text, 4326)) AND ("a_179"."object" = 'http://linkedgeodata.org/ontology/Bakery'::text) AND ("a_180"."property" = 'http://www.w3.org/2000/01/rdf-schema#label'::text)
    UNION ALL
      SELECT "a_184"."language" "C_14", "a_184"."v" "C_13", NULL::text "C_12", ('http://linkedgeodata.org/geometry/node'::text || ("a_181"."id"::text)) "C_11", 'http://linkedgeodata.org/osm/'::text "C_10", "a_183"."object" "C_5", "a_183"."property" "C_4", 'http://geovocab.org/geometry#geometry'::text "C_7", "a_184"."property" "C_6", ('http://linkedgeodata.org/triplify/node'::text || ("a_181"."id"::text)) "C_9", 'http://www.opengis.net/ont/geosparql#asWKT'::text "C_8", "a_182"."geom" "C_15"
      FROM
        "lgd_node_tags_resource_k" "a_183", 
        "lgd_node_tags_text" "a_184", 
        (SELECT *, ST_X(geom::geometry) x, ST_Y(geom::geometry) y, ST_X(geom::geometry)::float4::text x_text, ST_Y(geom::geometry)::float4::text y_text FROM nodes) a_181, 
        (SELECT *, ST_X(geom::geometry) x, ST_Y(geom::geometry) y, ST_X(geom::geometry)::float4::text x_text, ST_Y(geom::geometry)::float4::text y_text FROM nodes) a_182
      WHERE ("a_182"."geom" IS NOT NULL) AND ("a_181"."id" = "a_182"."id") AND ("a_183"."node_id" IS NOT NULL) AND ("a_183"."object" IS NOT NULL) AND ("a_183"."property" IS NOT NULL) AND ("a_181"."id" = "a_183"."node_id") AND ("a_184"."node_id" IS NOT NULL) AND ("a_184"."language" IS NOT NULL) AND ("a_184"."v" IS NOT NULL) AND ("a_184"."property" IS NOT NULL) AND ("a_181"."id" = "a_184"."node_id") AND ("a_184"."language" = ''::text) AND ("a_183"."property" = 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'::text) AND ST_Intersects("a_182"."geom", ST_GeomFromText('POLYGON((7.3 44.5, 8.5 44.5, 8.5 45.5, 7.3 45.5, 7.3 44.5))'::text, 4326)) AND ("a_183"."object" = 'http://linkedgeodata.org/ontology/Bakery'::text) AND ("a_184"."property" = 'http://www.w3.org/2000/01/rdf-schema#label'::text)
    UNION ALL
      SELECT NULL::text "C_14", NULL::text "C_13", "a_188"."object" "C_12", ('http://linkedgeodata.org/geometry/node'::text || ("a_185"."id"::text)) "C_11", 'http://linkedgeodata.org/osm/'::text "C_10", "a_187"."object" "C_5", "a_187"."property" "C_4", 'http://geovocab.org/geometry#geometry'::text "C_7", "a_188"."property" "C_6", ('http://linkedgeodata.org/triplify/node'::text || ("a_185"."id"::text)) "C_9", 'http://www.opengis.net/ont/geosparql#asWKT'::text "C_8", "a_186"."geom" "C_15"
      FROM
        "lgd_node_tags_resource_k" "a_187", 
        "lgd_node_tags_resource_kv" "a_188", 
        (SELECT *, ST_X(geom::geometry) x, ST_Y(geom::geometry) y, ST_X(geom::geometry)::float4::text x_text, ST_Y(geom::geometry)::float4::text y_text FROM nodes) a_185, 
        (SELECT *, ST_X(geom::geometry) x, ST_Y(geom::geometry) y, ST_X(geom::geometry)::float4::text x_text, ST_Y(geom::geometry)::float4::text y_text FROM nodes) a_186
      WHERE ("a_186"."geom" IS NOT NULL) AND ("a_185"."id" = "a_186"."id") AND ("a_187"."node_id" IS NOT NULL) AND ("a_187"."object" IS NOT NULL) AND ("a_187"."property" IS NOT NULL) AND ("a_185"."id" = "a_187"."node_id") AND ("a_188"."node_id" IS NOT NULL) AND ("a_188"."object" IS NOT NULL) AND ("a_188"."property" IS NOT NULL) AND ("a_185"."id" = "a_188"."node_id") AND ("a_187"."property" = 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'::text) AND ST_Intersects("a_186"."geom", ST_GeomFromText('POLYGON((7.3 44.5, 8.5 44.5, 8.5 45.5, 7.3 45.5, 7.3 44.5))'::text, 4326)) AND ("a_187"."object" = 'http://linkedgeodata.org/ontology/Bakery'::text) AND ("a_188"."property" = 'http://www.w3.org/2000/01/rdf-schema#label'::text)
    UNION ALL
      SELECT NULL::text "C_14", NULL::text "C_13", "a_192"."object" "C_12", ('http://linkedgeodata.org/geometry/node'::text || ("a_189"."id"::text)) "C_11", 'http://linkedgeodata.org/osm/'::text "C_10", "a_191"."object" "C_5", "a_191"."property" "C_4", 'http://geovocab.org/geometry#geometry'::text "C_7", "a_192"."property" "C_6", ('http://linkedgeodata.org/triplify/node'::text || ("a_189"."id"::text)) "C_9", 'http://www.opengis.net/ont/geosparql#asWKT'::text "C_8", "a_190"."geom" "C_15"
      FROM
        (SELECT *, ST_X(geom::geometry) x, ST_Y(geom::geometry) y, ST_X(geom::geometry)::float4::text x_text, ST_Y(geom::geometry)::float4::text y_text FROM nodes) a_189, 
        (SELECT *, ST_X(geom::geometry) x, ST_Y(geom::geometry) y, ST_X(geom::geometry)::float4::text x_text, ST_Y(geom::geometry)::float4::text y_text FROM nodes) a_190, 
        "lgd_node_tags_resource_k" "a_191", 
        "lgd_node_tags_resource_k" "a_192"
      WHERE ("a_190"."geom" IS NOT NULL) AND ("a_189"."id" = "a_190"."id") AND ("a_191"."node_id" IS NOT NULL) AND ("a_191"."object" IS NOT NULL) AND ("a_191"."property" IS NOT NULL) AND ("a_189"."id" = "a_191"."node_id") AND ("a_192"."node_id" IS NOT NULL) AND ("a_192"."object" IS NOT NULL) AND ("a_192"."property" IS NOT NULL) AND ("a_189"."id" = "a_192"."node_id") AND ("a_191"."property" = 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'::text) AND ST_Intersects("a_190"."geom", ST_GeomFromText('POLYGON((7.3 44.5, 8.5 44.5, 8.5 45.5, 7.3 45.5, 7.3 44.5))'::text, 4326)) AND ("a_191"."object" = 'http://linkedgeodata.org/ontology/Bakery'::text) AND ("a_192"."property" = 'http://www.w3.org/2000/01/rdf-schema#label'::text)
) "a_193"
