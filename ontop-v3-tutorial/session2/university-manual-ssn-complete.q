[QueryItem="researchers"]
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

[QueryItem="supervisedBy_professor"]
PREFIX : <http://example.org/voc#>

SELECT ?x
WHERE {
   ?x :isSupervisedBy [ a :Professor ] .
}

[QueryItem="persons"]
PREFIX foaf: <http://xmlns.com/foaf/0.1/>

SELECT ?p
WHERE {
  ?p a foaf:Person .
}

[QueryItem="facultyMembers"]
PREFIX : <http://example.org/voc#>

SELECT ?p
WHERE {
  ?p a :FacultyMember .
}

[QueryItem="fullProfessor_names"]
PREFIX : <http://example.org/voc#>
PREFIX foaf: <http://xmlns.com/foaf/0.1/>

SELECT DISTINCT ?prof ?lastName {
  ?prof a :FullProfessor ; 
        foaf:firstName ?firstName ; 
        foaf:lastName ?lastName .
}

[QueryItem="teachers"]
PREFIX : <http://example.org/voc#>
PREFIX foaf: <http://xmlns.com/foaf/0.1/>

SELECT DISTINCT ?teacher {
  ?teacher a :Teacher .
}

[QueryItem="teacher_names"]
PREFIX : <http://example.org/voc#>
PREFIX foaf: <http://xmlns.com/foaf/0.1/>

SELECT DISTINCT * {
  ?teacher a :Teacher ;
    foaf:firstName ?firstName ;
    foaf:lastName ?lastName .
}

[QueryItem="courses"]
PREFIX : <http://example.org/voc#>
PREFIX foaf: <http://xmlns.com/foaf/0.1/>

SELECT ?lname ?title 
WHERE {

  ?attendee foaf:lastName ?lname ;
      :attends ?course .

  ?course :title ?title .
}

[QueryItem="person_names"]
PREFIX foaf: <http://xmlns.com/foaf/0.1/>

SELECT ?p ?firstName ?lastName
WHERE {
  ?p a foaf:Person ;
     foaf:firstName ?firstName ;
     foaf:lastName ?lastName .
}

[QueryItem="teaching_different_institutions"]
PREFIX : <http://example.org/voc#>
PREFIX foaf: <http://xmlns.com/foaf/0.1/>

SELECT DISTINCT ?firstName ?lastName ?ins1 ?ins2 
WHERE {
   ?p foaf:firstName ?firstName ;
      foaf:lastName ?lastName ;
      :teaches [ :isGivenAt ?ins1 ],
           [ :isGivenAt ?ins2 ] .

   FILTER(?ins1 < ?ins2)
}

[QueryItem="teaching_different_institutions-2"]
PREFIX : <http://example.org/voc#>
PREFIX foaf: <http://xmlns.com/foaf/0.1/>

SELECT DISTINCT ?firstName ?lastName ?ins1 ?ins2 
WHERE {
   ?p1 foaf:firstName ?firstName ;
      foaf:lastName ?lastName ;
      :teaches [ :isGivenAt ?ins1 ] .

   ?p2 foaf:firstName ?firstName ;
      foaf:lastName ?lastName ;
      :teaches [ :isGivenAt ?ins2 ] .

   FILTER(?ins1 < ?ins2)
}

[QueryItem="institutions"]
PREFIX : <http://example.org/voc#>

SELECT DISTINCT ?institution
WHERE {
  ?institution a :EducationalInstitution .
}

[QueryItem="teaching_different_institutions-3"]
PREFIX : <http://example.org/voc#>
PREFIX foaf: <http://xmlns.com/foaf/0.1/>

SELECT DISTINCT ?p ?ins1 ?ins2 
WHERE {
   ?p :teaches [ :isGivenAt ?ins1 ],
           [ :isGivenAt ?ins2 ] .

   FILTER(?ins1 < ?ins2)
}
