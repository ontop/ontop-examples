Prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#>
Prefix ogc: <http://www.opengis.net/ont/geosparql#>
Prefix geom: <http://geovocab.org/geometry#>
Prefix lgdo: <http://linkedgeodata.org/ontology/>
Prefix bif: <http://www.openlinksw.com/schemas/bif#>

Select *
From <http://linkedgeodata.org> {
  ?s
  a lgdo:Library ;
  rdfs:label ?l ;
  geom:geometry [
    ogc:asWKT ?g
  ] .

Filter(lang(?l) = "" || lang(?l) = "it") .

Filter(bif:st_intersects (?g, bif:st_point (7.7748827, 43.8198253), 0.1)) .
}
