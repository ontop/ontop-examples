[QueryItem="Patient"]
PREFIX : <http://example.org/hospital#>

SELECT ?p WHERE {
 ?p a :Patient .
}

[QueryItem="Stage-IIIa"]
PREFIX inst: <http://example.org/hospital/instances/>
PREFIX : <http://example.org/hospital#>

SELECT ?name 
WHERE { 
  ?p a :Patient ;
     :hasName ?name ; 
     :hasNeoplasm ?tumor .
  ?tumor :hasStage inst:stage-IIIa .
}
