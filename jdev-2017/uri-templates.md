Choice of the URI templates
===========================

Until now, we have been using local identifiers from the data sources to build 3 different URI templates for the persons of these two universities:
  - `ex:uni1/student/{*}`
  - `ex:uni1/academic/{*}`
  - `ex:uni2/person/{*}`

Let us now consider the case where the tables `uni1.student`, `uni1.academic` and `uni2.person` have
a new column: `ssn`. This column corresponds to the social security number of the person.

This new column gives us the opportunity to use a common URI template for all the persons. Such URI template would allow us to collect information about a same person registered in both universities.

As we will see, there are actually some persons that are teaching or studying in both universities.

Given that we already have the mapping assertions produced during the first session, we will consider
two ways to change the URI templates: first by doing it manually, then using the notion of canonical URIs.

We will also see that using this new URI template has a negative impact on the performance of some queries.

## Manual approach

Download the following files: [university-manual-ssn.ttl](https://github.com/ontop/ontop-examples/raw/master/ekaw-tutorial-2016/session2/university-manual-ssn.ttl)
and [university-manual-ssn.obda](https://github.com/ontop/ontop-examples/raw/master/ekaw-tutorial-2016/session2/university-manual-ssn.obda) files.

The mapping assertions are currently the same as during the first hands-on session.
Let us now update them with the new URI template for persons.

#### Mapping uni1.student
 * Target:
```turtle
ex:person/{ssn} a :Student ;
   foaf:firstName {first_name}^^xsd:string ; foaf:lastName {last_name}^^xsd:string .
```
 * Source:
```sql
SELECT * FROM "uni1"."student"
```

#### Mapping uni1-academic
 * Target:
```turtle
ex:person/{ssn} a :FacultyMember ;
    foaf:firstName {first_name}^^xsd:string ;
    foaf:lastName {last_name}^^xsd:string .
```
 * Source:
```sql
SELECT *
FROM "uni1"."academic"
```

#### Mapping uni1-teaching
 * Target:
```turtle
ex:person/{ac.ssn} :teaches ex:uni1/course/{te.c_id} .
```
 * Source:
```sql
SELECT *
FROM "uni1"."teaching" te, "uni1"."academic" ac
WHERE te."a_id" = ac."a_id"
```

As you can see, a join is needed to get the SSN of the teacher.


#### Mapping uni1-registration
 * Target:
```turtle
ex:person/{st.ssn} :attends ex:uni1/course/{re.c_id} .
```
 * Source:
```sql
SELECT *
FROM "uni1"."course-registration" re, "uni1"."student" st
WHERE re."s_id" = st."s_id"
```

#### Mapping uni1-fullProfessor
 * Target:
```turtle
ex:person/{ssn} a :FullProfessor .
```
 * Source:
```sql
SELECT *
FROM "uni1"."academic"
WHERE "position" = 1
```

Then proceed in a similar way for the other positions (assistant professor, postdoc, etc.).

#### Mapping uni2.person
 * Target:
```turtle
ex:person/{ssn} a foaf:Person ;
    foaf:firstName {fname}^^xsd:string ;
    foaf:lastName {lname}^^xsd:string .
```
 * Source:
```sql
SELECT *
FROM "uni2"."person"
```

#### Mapping uni2-lecturer
 * Target:
```turtle
ex:person/{pe.ssn} :givesLecture ex:uni2/course/{co.cid} .
```
 * Source:
```sql
SELECT *
FROM "uni2"."course" co, "uni2"."person" pe
WHERE co."lecturer" = pe."pid"
```

#### Mapping uni2-lab-teacher
 * Target:
```turtle
ex:person/{pe.ssn} :givesLab ex:uni2/course/{co.cid} .
```
 * Source:
```sql
SELECT *
FROM "uni2"."course" co, "uni2"."person" pe
WHERE co."lab_teacher" = pe."pid"
```

#### Mapping uni2-registration
 * Target:
```turtle
ex:person/{pe.ssn} :attends ex:uni2/course/{re.cid} .
```
 * Source:
```sql
SELECT *
FROM "uni2"."registration" re, "uni2"."person" pe
WHERE re."pid" = pe."pid"
```


#### Mapping uni2-undergraduate
 * Target:
```turtle
ex:person/{ssn} a :UndergraduateStudent .
```
 * Source:
```sql
SELECT *
FROM "uni2"."person"
WHERE "status" = 1
```

### SPARQL queries

With the new mapping assertions, the following SPARQL query should now return some results:

```sparql
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
```

However, if you execute another variant, you will see it is now very inefficient:

```sparql
PREFIX : <http://example.org/voc#>
PREFIX foaf: <http://xmlns.com/foaf/0.1/>

SELECT ?firstName ?lastName ?ins1 ?ins2
WHERE {
   ?p1 foaf:firstName ?firstName ;
      foaf:lastName ?lastName ;
      :teaches [ :isGivenAt ?ins1 ] .

   ?p2 foaf:firstName ?firstName ;
      foaf:lastName ?lastName ;
      :teaches [ :isGivenAt ?ins2 ] .

   FILTER(?ins1 < ?ins2)
}
```
Look at the SQL query, it should be very long.
It suffers from the exponential blowup that we mentioned during the talk.
Note that the first query also suffers from an exponential blowup but the latter is less important and thus less sensible on our small dataset.


## Canonical URIs

Instead of changing the mapping assertions manually, Ontop allows you to declare a canonical URI template for `ex:uni1/student/{*}`, `ex:uni1/academic/{*}` and `ex:uni2/person/{*}`.

This takes the form of three additional mapping assertions that can be found in the [university-canonical.ttl](https://github.com/ontop/ontop-examples/raw/master/ekaw-tutorial-2016/session2/university-canonical.ttl)
and [university-canonical.obda](https://github.com/ontop/ontop-examples/raw/master/ekaw-tutorial-2016/session2/university-canonical.obda) files.

#### Mapping uni1-academic-canonical
 * Target:
```turtle
ex:person/{ssn} ontop:is_canonical_iri_of ex:uni1/academic/{a_id} .
```
 * Source:
```sql
SELECT * FROM "uni1"."academic"
```

#### Mapping uni1.student-canonical
 * Target:
```turtle
ex:person/{ssn} ontop:is_canonical_iri_of ex:uni1/student/{s_id} .
```
 * Source:
```sql
SELECT * FROM "uni1"."student"
```

#### Mapping uni2.person-canonical
 * Target:
```turtle
ex:person/{ssn} ontop:is_canonical_iri_of ex:uni2/person/{pid} .
```
 * Source:
```sql
SELECT * FROM "uni2"."person"
```

With these three mapping assertions and the ones of the first session, Ontop produces the same saturated mapping assertions as in the manual approach.
