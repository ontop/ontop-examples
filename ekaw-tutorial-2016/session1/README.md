First session: Basics of OBDA System Modeling and Usage
=======================================================

In this hands-on session, we are considering fragments of the information systems
of some universities, that is, some information about students, academic staff and courses.


Requirements
------------

* Java 8
* [Protégé bundle with Ontop 1.18](https://sourceforge.net/projects/ontop4obda/files/ontop-1.18.0/ontop-protege-bundle-1.18.0.zip/download) (TODO: should use a special version?)
* [H2 (relational database)](https://sourceforge.net/projects/ontop4obda/files/sample-data/) TODO: update the link


First data source: university 1
--------------------------------

As a first step, we focus on the database of a first university. It has
the schema *uni1*.
It is composed of 4 tables.

#### *uni1.student*

The table *uni1.student* contains the local ID, first and last names of the students.

s_id | first_name |  last_name
---- | ---------- | ----------
  1  | Mary       | Smith
  2  | John       | Doe

The column *s_id* is a primary key.  

#### *uni1.academic*

Similarly, the table *uni1.academic* contains the local ID,
first and last names of the academic staff, but also information about their position.

a_id | first_name |  last_name | position
---- | ---------- | ---------- | --------
  1  | Anna       | Chambers   | 1
  2  | Edward     | May        | 9
  3  | Rachel     | Ward       | 8

The column *position* is populated of magic numbers:
  - 1 -> Full Professor
  - 2 -> Associate Professor
  - 3 -> Assistant Professor
  - 4 -> ?
  - 5 -> ?
  - 6 -> ?
  - 7 -> ?
  - 8 -> External Teacher
  - 9 -> PostDoc

The column *a_id* is a primary key.

#### *uni1.course*

The table *uni1.course* contains the local ID
and the title of the courses.

c_id | title
---- | -----
1234 | Linear Algebra

The column *c_id* is a primary key.

#### *uni1.teaching*

The table *uni1.teaching* contains the n-n relation
between courses and teachers.

c_id | a_id
---- | ----
1234 | 1
1234 | 2

There is no primary key, but two foreign keys to the tables *uni1.course* and *uni1.academic*.

## Database setup

Procedure:

1. Unzip the archive of H2 *(h2.zip)*
2. Start the database:
   * On Mac/Linux: open a terminal, go into *h2/bin* and run `sh h2.sh`
   * On Windows: click on the executable `h2w.bat`
3. After being automatically redirect to the web interface of H2, connect with the default parameters:
     * JDBC URL:  *jdbc:h2:tcp://localhost/./university-session1*
     * User name: *sa*
     * No password
4. Now you can see the tables in the schema *uni1*.
5. Try a first SQL query: "Give me the last names of the full professors"

```sql
SELECT "last_name"
FROM "uni1"."academic"
WHERE "position" = 1
```

Ontology: classes and properties
--------------------------------


0. Unzip the Protégé archive and go into its folder
1. Run it (*run.bat* on Windows, *run.sh* on Mac/Linux)
2. Register the H2 JDBC driver: go to "Preferences", "JDBC Drivers" and add an entry with the following information
     * Description: *h2*
     * Class Name: *org.h2.Driver*
     * Driver file (jar): */path/to/h2/bin/h2-1.3.176.jar*

3. Download [this OWL ontology file](https://github.com/ontop/ontop-examples/blob/master/ekaw-tutorial-2016/session1/university.ttl).
4. Download [this mapping file file](https://github.com/ontop/ontop-examples/blob/master/ekaw-tutorial-2016/session1/university.obda).
5. Go to "File/Open..." to load the ontology file.
6. In the tab "Classes" you can visualize the class hierarchy
7. In the tab "Object properties" you can see the properties *isSupervisedBy*, *isTaughtBy* and *teaches*
8. In the tab "Data properties" you can see the properties *firstName*, *lastName* and *title*.


Mappings
--------

1. Go to the "Ontop mapping" tab
2. Test the already defined connection configuration using the “Test Connection” button
3. Switch to the “Mapping Manager” tab in the ontop mappings tab
4. You should see a first mapping called *uni1-fullProfessor*
5. Click on "Create" to create a new mapping

#### Mapping uni1-student
 * Target:
```turtle
ex:uni1/student/{s_id} a :Student ;
    foaf:firstName {first_name}^^xsd:string ;
    foaf:lastName {last_name}^^xsd:string .
```
 * Source:
```sql
SELECT *
FROM "uni1"."student"
```

#### Mapping uni1-academic
 * Target:
```turtle
ex:uni1/academic/{a_id} a :FacultyMember ;
    foaf:firstName {first_name}^^xsd:string ;
    foaf:lastName {last_name}^^xsd:string .
```
 * Source:
```sql
SELECT *
FROM "uni1"."academic"
```

#### Mapping uni1-course
 * Target:
```turtle
ex:uni1/course/{c_id} a :Course ;
    :title {title} .
```
 * Source:
```sql
SELECT *
FROM "uni1"."course"
```

#### Mapping uni1-teaching
 * Target:
```turtle
ex:uni1/academic/{a_id} :teaches ex:uni1/course/{c_id} .
```
 * Source:
```sql
SELECT *
FROM "uni1"."teaching"
```

#### Mapping uni1-fullProfessor
 * Target:
```turtle
ex:uni1/academic/{a_id} a :FullProfessor .
```
 * Source:
```sql
SELECT *
FROM "uni1"."academic"
WHERE "position" = 1
```

And so on for the other positions (assistant professor, postdoc, etc.).


# SPARQL

1. Select Quest (Ontop) in the “Reasoner” menu
2. Start the reasoner
3. Run the following query:
```sparql
PREFIX : <http://example.org/voc#>
PREFIX foaf: <http://xmlns.com/foaf/0.1/>

SELECT DISTINCT ?prof ?lastName {
  ?prof a :FullProfessor ; foaf:lastName ?lastName .
}
```

Tip: do a right click on the SPARQL query field to visualize the generated SQL query.

### Inference

Ontop embeds some inference capabilities and is thus capable of answering a query as follows:
```sparql
PREFIX : <http://example.org/voc#>

SELECT DISTINCT ?teacher {
  ?teacher a :Teacher .
}
```

These inference capabilities can be, for a large part, understood as the ability to infer new mappings
from the original mappings and the ontological axioms.


# Second database

We now consider the database of another university. It has a different schema,
composed of two tables:

### uni2.person
*uni2.person*: describe the students and the academic staff of the university.

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

### uni2.course
*uni2.course* : ...

cid | lecturer | lab_teacher | topic
--- | -------- | ----------- | ---------------------
 1  | 1        | 3           |  Information security


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
    :title {topic}^^xsd:string .
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
