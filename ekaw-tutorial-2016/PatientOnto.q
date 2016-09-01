[QueryItem="Example Query"]
PREFIX : <http://www.semanticweb.org/mrezk#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX quest: <http://obda.org/quest#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
SELECT ?p ?name WHERE
{ ?p rdf:type :Patient .
?p :hasName ?name .
?p :hasNeoplasm ?tumor .
?tumor :hasStage :stage-IIIa .}
