PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX geo: <http://www.opengis.net/ont/geosparql#>
PREFIX geof: <http://www.opengis.net/def/function/geosparql/>
PREFIX uom: <http://www.opengis.net/def/uom/OGC/1.0/>
PREFIX lgdo: <http://www.semanticweb.org/linkedgeodata/>

SELECT * WHERE {
  ?a a lgdo:Motorway ;
    geo:hasGeometry/geo:asWKT ?ag ;
    rdfs:label ?aname .
  FILTER(lang(?aname) = "" || lang(?aname) = "it")
  ?b a lgdo:Canal ;
    geo:hasGeometry/geo:asWKT ?bg ;
    rdfs:label ?bname .
  FILTER(lang(?bname) = "" || lang(?bname) = "it")
  FILTER(geof:sfIntersects(?ag, ?bg))
}
