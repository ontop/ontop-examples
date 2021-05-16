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
  FILTER(geof:sfWithin(?ag, 'POLYGON((7.3 44.5, 8.5 44.5, 8.5 45.5, 7.3 45.5, 7.3 44.5))'^^geo:wktLiteral))
}
