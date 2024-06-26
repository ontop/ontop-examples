Prefix lgdo: <http://linkedgeodata.org/ontology/>
Prefix geom: <http://geovocab.org/geometry#>
Prefix ogc: <http://www.opengis.net/ont/geosparql#>
Prefix owl: <http://www.w3.org/2002/07/owl#>
Prefix bif: <http://www.openlinksw.com/schemas/bif#>

Select * {
  ?s
    owl:sameAs <http://dbpedia.org/resource/Udine> ;
    geom:geometry [
      ogc:asWKT ?sg
    ] .

?x
    a lgdo:Bank ;
    rdfs:label ?l ;
    geom:geometry [
      ogc:asWKT ?xg
    ] .

    Filter(lang(?l) = "" || lang(?l) = "it") .

    Filter(bif:st_intersects (?sg, ?xg, 0.1)) .
}
