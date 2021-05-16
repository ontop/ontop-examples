PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX geo: <http://www.opengis.net/ont/geosparql#>
PREFIX geof: <http://www.opengis.net/def/function/geosparql/>
PREFIX uom: <http://www.opengis.net/def/uom/OGC/1.0/>
PREFIX lgdo: <http://linkedgeodata.org/ontology/>
PREFIX owl: <http://www.w3.org/2002/07/owl#>

SELECT * WHERE {
  ?a a lgdo:Bank;
    geo:hasGeometry/geo:asWKT ?ag ;
    rdfs:label ?name .
  FILTER(lang(?name) = "" || lang(?name) = "de")
  ?b owl:sameAs <http://dbpedia.org/resource/Weimar> ;
    geo:hasGeometry/geo:asWKT ?bg .
  BIND (geof:distance(?bg, ?ag, uom:degree) AS ?distance)
  FILTER (?distance <= 0.1)
}
