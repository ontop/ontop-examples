PREFIX bsbm-inst: <http://www4.wiwiss.fu-berlin.de/bizer/bsbm/v01/instances/>
PREFIX bsbm: <http://www4.wiwiss.fu-berlin.de/bizer/bsbm/v01/vocabulary/>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>

SELECT DISTINCT ?product ?label ?propertyTextual
WHERE {
    { 
       ?product rdfs:label ?label .
       ?product bsbm:productFeature <http://www4.wiwiss.fu-berlin.de/bizer/bsbm/v01/instances/ProductFeature${1:productfeatureproduct.productFeature:percent}> .
	   ?product bsbm:productFeature <http://www4.wiwiss.fu-berlin.de/bizer/bsbm/v01/instances/ProductFeature${2:productfeatureproduct.productFeature:percent}> .
       ?product bsbm:productPropertyTextual1 ?propertyTextual .
	   ?product bsbm:productPropertyNumeric1 ?p1 .
	    FILTER ( ?p1 > ${1:product.propertyNum1:null} )
    } UNION {
       ?product rdfs:label ?label .
       ?product bsbm:productFeature <http://www4.wiwiss.fu-berlin.de/bizer/bsbm/v01/instances/ProductFeature${1:productfeatureproduct.productFeature:percent}> .
	   ?product bsbm:productFeature <http://www4.wiwiss.fu-berlin.de/bizer/bsbm/v01/instances/ProductFeature${3:productfeatureproduct.productFeature:percent}> .
       ?product bsbm:productPropertyTextual1 ?propertyTextual .
	   ?product bsbm:productPropertyNumeric2 ?p2 .
	   FILTER ( ?p2> ${1:product.propertyNum2:null} ) 
    } 
}
ORDER BY ?label
OFFSET 5