PREFIX bsbm: <http://www4.wiwiss.fu-berlin.de/bizer/bsbm/v01/vocabulary/>
PREFIX dc: <http://purl.org/dc/elements/1.1/>
PREFIX rev: <http://purl.org/stuff/rev#>
PREFIX foaf: <http://xmlns.com/foaf/0.1/>
PREFIX bsbm-inst:	<http://www4.wiwiss.fu-berlin.de/bizer/bsbm/v01/instances/>

SELECT ?property ?hasValue ?isValueOf
WHERE {
  { <http://www4.wiwiss.fu-berlin.de/bizer/bsbm/v01/instances/dataFromVendor/Offer${1:offer.nr:percent}> ?property ?hasValue }
  UNION
  { ?isValueOf ?property <http://www4.wiwiss.fu-berlin.de/bizer/bsbm/v01/instances/Offer${1:offer.nr:percent}> }
}
