PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX geo: <http://www.opengis.net/ont/geosparql#>
PREFIX geof: <http://www.opengis.net/def/function/geosparql/>
PREFIX uom: <http://www.opengis.net/def/uom/OGC/1.0/>
PREFIX lgdo: <http://linkedgeodata.org/ontology/>

SELECT * WHERE {
  ?a a lgdo:Pharmacy; 
  geo:hasGeometry/geo:asWKT ?ag ; 
    rdfs:label ?name .
  FILTER(lang(?name) = "" || lang(?name) = "it")
  FILTER(geof:sfIntersects(?ag, 'POLYGON((11 46.45, 11.6 46.45, 11.6 46.64, 11 46.64, 11 46.45))'^^geo:wktLiteral))
}
