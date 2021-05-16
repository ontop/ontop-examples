Prefix lgdo: <http://linkedgeodata.org/ontology/> 
Prefix geom: <http://geovocab.org/geometry#> 
Prefix ogc: <http://www.opengis.net/ont/geosparql#> 
Prefix owl: <http://www.w3.org/2002/07/owl#> 
Prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> 
Prefix bif: <http://www.openlinksw.com/schemas/bif#> 

Select * FROM <http://linkedgeodata.org> {

?s a lgdo:Pharmacy ; 
rdfs:label ?l ; 
geom:geometry [ogc:asWKT ?g] . 

Filter(lang(?l) = "" || lang(?l) = "it") .

Filter(bif:st_intersects(?g, bif:st_geomFromText("POLYGON((7.3 44.5, 8.5 44.5, 8.5 45.5, 7.3 45.5, 7.3 44.5))"))) . 

}
