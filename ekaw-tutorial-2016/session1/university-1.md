First data source: university 1
===============================

As a first step, we focus on the database of a first university. It has
the schema *uni1*.
It is composed of 5 tables.

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

#### *uni1.course-registration*

The table *uni1.course-registration* contains the n-n relation
between courses and students.

c_id | s_id
---- | ----
1234 | 1
1234 | 2

There is no primary key, but two foreign keys to the tables *uni1.course* and *uni1.student*.


## Database setup

Procedure:

1. Unzip the archive of H2 *(h2-ekaw.zip)*
2. Start the database:
   * On Mac/Linux: open a terminal, go into *h2/bin* and run `sh h2.sh`
   * On Windows: click on the executable `h2w.bat`
3. After being automatically redirect to the web interface of H2, connect with the default parameters:
     * JDBC URL:  *jdbc:h2:tcp://localhost/../university-session1*
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
4. Download [this mapping  file](https://github.com/ontop/ontop-examples/blob/master/ekaw-tutorial-2016/session1/university.obda).
5. Go to "File/Open..." to load the ontology file.
6. In the tab "Classes" you can visualize the class hierarchy
7. In the tab "Object properties" you can see the properties *attends*, *isGivenAt*, *isSupervisedBy*, *isTaughtBy* and *teaches*.
8. In the tab "Data properties" you can see the properties *firstName*, *lastName* and *title*.


Mappings
--------

1. Go to the "Ontop mapping" tab
2. Test the already defined connection configuration using the “Test Connection” button
3. Switch to the “Mapping Manager” tab in the ontop mappings tab
4. You should see a first mapping assertion called *uni1-student*
5. Double-clic on it to observe it and then close this pop-up window.

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

Some remarks:
  - We used the primary key `s_id` to create the URI. As we will see this afternoon,
    this practice enables Ontop to remove self-joins, which is very important for optimizing
    the query performance.
  - This entry could be split into three mapping assertions.


Let us now add the other mapping assertions by clicking on "create":

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
    :title {title} ;
    :isGivenAt ex:uni1/university .
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

#### Mapping uni1-registration
 * Target:
```turtle
ex:uni1/student/{s_id} :attends ex:uni1/course/{c_id} .
```
 * Source:
```sql
SELECT *
FROM "uni1"."course-registration"
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

Then proceed in a similar way for the other positions (assistant professor, postdoc, etc.).


### SPARQL

1. Select Ontop in the “Reasoner” menu
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
from the original mappings and the ontological axioms. We will discuss about this afternoon.

[Next: Second data source](university-2.md)
