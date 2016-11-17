Second data source: university 2
================================

We now consider the database of another university. It has a different schema,
composed of three tables:

#### *uni2.person*
The table *uni2.person* describes the students and the academic staff of the university.

pid | fname   | lname  | status
--- | ------- | ------ | ------
 1  |  Zak    | Lane   | 8
 2  |  Mattie | Moses  | 1
 3  |  Céline | Mendez | 2

 The column *status* is populated of magic numbers (they differ from the ones of the first university):
   - 1 -> Undergraduate Student
   - 2 -> Graduate Student
   - 3 -> PostDoc
   - 7 -> Full Professor
   - 8 -> Associate Professor
   - 9 -> Assistant Professor

As you can see, undergraduate and graduate students are now distinguished.

#### *uni2.course*
The table *uni2.course* contains Information
about courses, their topic, their lecturer and their lab teacher.

cid | lecturer | lab_teacher | topic
--- | -------- | ----------- | ---------------------
 1  | 1        | 3           |  Information security

Note that in this data source, there are maximum two teachers per course. Lecturers and lab teachers are now distinguished.

#### *uni2.registration*

The table *uni2.registration* contains the n-n relation
between courses and attendees.

pid | cid
--- | ---
2   | 1

There is no primary key, but two foreign keys to the tables *uni2.course* and *uni2.person*.

## New mappings

#### Mapping uni2.person
 * Target:
```turtle
ex:uni2/person/{pid} a foaf:Person ;
    foaf:firstName {fname}^^xsd:string ;
    foaf:lastName {lname}^^xsd:string .
```
 * Source:
```sql
SELECT *
FROM "uni2"."person"
```

#### Mapping uni2-course
 * Target:
```turtle
ex:uni2/course/{cid} a :Course ;
    :title {topic}^^xsd:string ;
    :isGivenAt ex:uni2/university .
```
 * Source:
```sql
SELECT *
FROM "uni2"."course"
```

#### Mapping uni2-lecturer
 * Target:
```turtle
ex:uni2/person/{lecturer} :givesLecture ex:uni2/course/{cid} .
```
 * Source:
```sql
SELECT *
FROM "uni2"."course"
```

#### Mapping uni2-lab-teacher
 * Target:
```turtle
ex:uni2/person/{lab_teacher} :givesLab ex:uni2/course/{cid} .
```
 * Source:
```sql
SELECT *
FROM "uni2"."course"
```

#### Mapping uni2-registration
 * Target:
```turtle
ex:uni2/person/{pid} :attends ex:uni2/course/{cid} .
```
 * Source:
```sql
SELECT *
FROM "uni2"."registration"
```


#### Mapping uni2-undergraduate
 * Target:
```turtle
ex:uni2/person/{pid} a :UndergraduateStudent .
```
 * Source:
```sql
SELECT *
FROM "uni2"."person"
WHERE "status" = 1
```

And so on for the graduate students, the professors, etc.

## SPARQL

We can now run the previous SPARQL queries and observe that the results combine
entries from the two datasets.


[Next: SPARQL endpoint](sparql-endpoint.md)
