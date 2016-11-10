[QueryItem="all_researchers"]
PREFIX : <http://example.org/voc#>

SELECT ?researcher
WHERE {
   ?researcher a :Researcher .
}

[QueryItem="prof_course"]
PREFIX : <http://example.org/voc#>
PREFIX foaf: <http://xmlns.com/foaf/0.1/>

SELECT ?title ?fName ?lName {
  ?teacher rdf:type :Professor . 
  ?teacher :teaches ?course . 
  ?teacher foaf:lastName ?lName .

  ?course :title ?title .
  OPTIONAL {
    ?teacher foaf:firstName ?fName .
  }
}

[QueryItem="teacher_last_name"]
PREFIX : <http://example.org/voc#>
PREFIX foaf: <http://xmlns.com/foaf/0.1/>

SELECT DISTINCT ?teacher ?lastName {
  ?teacher a :Teacher ; foaf:lastName ?lastName .
}

[QueryItem="supervised_by_professor"]
PREFIX : <http://example.org/voc#>

SELECT ?x
WHERE {
   ?x :isSupervisedBy [ a :Professor ] .
}

[QueryItem="All_persons"]
PREFIX foaf: <http://xmlns.com/foaf/0.1/>

SELECT ?p
WHERE {
  ?p a foaf:Person .
}

[QueryItem="All faculty members"]
PREFIX : <http://example.org/voc#>

SELECT ?p
WHERE {
  ?p a :FacultyMember .
}
