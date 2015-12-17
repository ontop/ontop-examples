Supplemental tutorial for the submission "Ontop: Answering SPARQL Queries over Relational Databases"
=====================================================================================================

This tutorial will briefly introduce the main functionalities of Ontop.
It is based on a simple life science example.

TODO: list the plan


Requirements
------------

* Java 7 or 8
* Ontop 1.16
* H2 (relational database)
* Protégé
* TODO: complete


First dataset
-------------

Let's consider a first denormalized table *tbl_patient* describing some patients and their lung cancer.

patientid | name | stage
--------- | ---- | -----
   1      | Mary |   4
   2      | John |   7
   
The column *stage* encodes the international classification of the lung cancer:

 * 1-6: Non-Small Cell Lung Cancer (NSCLC): I, II, III, IIIa, IIIb and IV
 * 7-8: Small Cell Lung Cancer (SCLC): Limited, Extensive
 

Start the database:

* On Mac/Linux: open a terminal, go into *h2/bin* and run `sh h2.sh`
* On Windows: click on the executable `h2w.bat`

This should redirect to the web interface of H2:

TODO: include two pictures


Create the table *tbl_patient* by executing the following query:

```sql
CREATE TABLE "tbl_patient" (
patientid INT NOT NULL PRIMARY KEY,
name VARCHAR(40),
type BOOLEAN,
stage TINYINT
)
```

and insert some entries:

```sql
INSERT INTO "tbl_patient"
(patientid,name,type,stage) VALUES
(1,'Mary',4),
(2,'John',7);
```

Let's try a first query: "Give me all patients that have a NSCLC at stage IIIa"

```sql
SELECT patientid
FROM "tbl_patient"
WHERE stage = 4
```

Ontology: classes and properties
--------------------------------

TODO: quickly explain


Open Ontop-Protégé

Register the H2 JDBC driver:

  * Go to "Preferences", "JDBC Drivers" and add an entry with the following information
     * Description: *h2*
     * Class Name: *org.h2.Driver*
     * Driver file (jar): */path/to/h2/bin/h2-1.3.176.jar*
     
  * Create the following class hierarchy manually or, alternatively, open [this OWL file](PatientOnto.owl).
  
  TODO: put a screenshot
  
  * Create two object properties: *hasNeoplasm* and *hasStage*
  
  TODO: put a screenshot
  
  * Create a data property: *hasName*
  
    TODO: put a screenshot
    
    
Mappings
--------

TODO: quickly explain. "By-product: documentation."

1. Go to the "Ontop mapping" tab
2. Add a new data source (give it a name, e.g., *PatientDB*)
3. Define the connection parameters as follows:
    * Connection URL: *jdbc:h2:tcp://localhost/helloworld*
    * Username: *sa*
    * Password: (leave empty)
    * Driver class: *org.h2.Driver* (choose it from the drop down menu)
4. Test the connection using the “Test Connection” button
5. Switch to the “Mapping Manager” tab in the ontop mappings tab
6. Select your datasource
7. Click on "Create" to create a new mapping

#### Mapping 1: Patient
 * Target: 
    ```turtle
     :db1/{patientid} a :Patient ; hasName "{name}"^^xsd:string .
    ```
 * Source:
    ```sql
       SELECT patientid, name 
       FROM "tbl_patient"
    ```
    
#### Mapping 2: Neoplasm
 * Target: 
    ```turtle
     :db1/{patientid} :hasNeoplasm :db1/neoplasm/{patientid}.
    ```
 * Source:
    ```sql
       SELECT patientid 
       FROM "tbl_patient"
    ```

#### Mapping 3: NSCLC
 * Target: 
    ```turtle
     :db1/neoplasm/{patientid} a :NSCLC .
    ```
 * Source:
    ```sql
       SELECT patientid 
       FROM "tbl_patient"
       WHERE stage > 0 AND stage < 7
    ```

#### Mapping 4: SCLC
 * Target: 
    ```turtle
     :db1/neoplasm/{patientid} a :SCLC .
    ```
 * Source:
    ```sql
       SELECT patientid 
       FROM "tbl_patient"
       WHERE stage = 7 OR stage = 8
    ```
    
#### Mapping 5: Stage I
 * Target: 
    ```turtle
     :db1/neoplasm/{patientid} :hasStage :stage-I .
    ```
 * Source:
    ```sql
       SELECT patientid 
       FROM "tbl_patient"
       WHERE stage = 1
    ``` 
    
Similarly to the mapping 5, seven additional mappings can be added
for the other stages.


# SPARQL

1. Enable Ontop in the “Reasoner” menu
2. In the ontop SPARQL tab add all the prefixes

TODO: add a screenshot


3. Run the following query:
```sparql
SELECT ?p ?name 
WHERE{   ?p :hasName ?name ;      :hasNeoplasm ?tumor .  ?tumor :hasStage :stage-I .}
``` 

Ontop embeds some inference capabilities and is thus capable of answering a query as follows:
```sparql
SELECT ?x 
WHERE 
{ 
   ?x a :Neoplasm . 
}
```

Tip: do a right click on the SPARQL query field to visualize the generated SQL query.


# Second dataset

TODO: continue
