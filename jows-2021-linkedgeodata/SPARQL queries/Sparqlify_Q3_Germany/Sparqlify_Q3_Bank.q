Prefix lgdo: <http://linkedgeodata.org/ontology/> 
Prefix geom: <http://geovocab.org/geometry#> 
Prefix ogc: <http://www.opengis.net/ont/geosparql#> 
Prefix owl: <http://www.w3.org/2002/07/owl#> 
Prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> 
Prefix bif: <http://www.openlinksw.com/schemas/bif#> 

Select * FROM <http://linkedgeodata.org> {

?s a lgdo:Bank ; 
rdfs:label ?l ; 
geom:geometry [ogc:asWKT ?g] . 

Filter(lang(?l) = "" || lang(?l) = "de") .

Filter(bif:st_intersects(?g, bif:st_geomFromText("POLYGON((11.6 53.4, 13.65 53.4, 13.65 54.25, 11.6 54.25, 11.6 53.4))"))) . 

}
