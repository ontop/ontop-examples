Prefix lgdo: <http://linkedgeodata.org/ontology/> 
Prefix geom: <http://geovocab.org/geometry#> 
Prefix ogc: <http://www.opengis.net/ont/geosparql#> 
Prefix owl: <http://www.w3.org/2002/07/owl#> 
Prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> 
Prefix bif: <http://www.openlinksw.com/schemas/bif#> 

Select * FROM <http://linkedgeodata.org> {
?s a lgdo:Restaurant ; 
rdfs:label ?l ; 
geom:geometry [ogc:asWKT ?g] . 

Filter(lang(?l) = "" || lang(?l) = "it") .

Filter(bif:st_intersects(?g, bif:st_geomFromText("POLYGON((11 46.45, 11.6 46.45, 11.6 46.64, 11 46.64, 11 46.45))"))) . 

}
