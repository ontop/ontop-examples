PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX bsbm: <http://www4.wiwiss.fu-berlin.de/bizer/bsbm/v01/vocabulary/>

SELECT DISTINCT ?product ?productLabel
WHERE { 
	?product rdfs:label ?productLabel .
    FILTER (<http://www4.wiwiss.fu-berlin.de/bizer/bsbm/v01/instances/dataFromProducer/Product${1:product.nr:percent}> != ?product)
	<http://www4.wiwiss.fu-berlin.de/bizer/bsbm/v01/instances/dataFromProducer/Product${1:product.nr:percent}> bsbm:productFeature ?prodFeature .
	?product bsbm:productFeature ?prodFeature .
	<http://www4.wiwiss.fu-berlin.de/bizer/bsbm/v01/instances/dataFromProducer/Product${1:product.nr:percent}> bsbm:productPropertyNumeric1 ?origProperty1 .
	?product bsbm:productPropertyNumeric1 ?simProperty1 .
	<http://www4.wiwiss.fu-berlin.de/bizer/bsbm/v01/instances/dataFromProducer/Product${1:product.nr:percent}> bsbm:productPropertyNumeric2 ?origProperty2 .
	?product bsbm:productPropertyNumeric2 ?simProperty2 .
}
ORDER BY ?productLabel