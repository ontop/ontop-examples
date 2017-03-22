PREFIX swrc: <http://swrc.ontoware.org/ontology#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>

PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX foaf: <http://xmlns.com/foaf/0.1/>
PREFIX dc: <http://purl.org/dc/elements/1.1/>
       SELECT ?D ?A ?name WHERE {
       ?D swrc:journal <http://dblp.l3s.de/d2r/resource/journals/${1:dblp_pub_new.source_id:percent}> .
       ?D dc:creator ?A.
       ?A foaf:name ?name.
       }