Prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#>
Prefix ogc: <http://www.opengis.net/ont/geosparql#>
Prefix geom: <http://geovocab.org/geometry#>
Prefix lgdo: <http://linkedgeodata.org/ontology/>
Prefix bif: <http://www.openlinksw.com/schemas/bif#>

Select *
From <http://linkedgeodata.org> {
  ?s
  a lgdo:Restaurant ;
  rdfs:label ?l ;
  geom:geometry [
    ogc:asWKT ?g
  ] .

Filter(lang(?l) = "" || lang(?l) = "it") .

Filter(bif:st_intersects (?g, bif:st_point (11.0452369, 45.886548), 0.1)) .
}
