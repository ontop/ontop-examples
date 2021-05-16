Select * {
  ?s
    owl:sameAs <http://dbpedia.org/resource/Cagliari> ;
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
