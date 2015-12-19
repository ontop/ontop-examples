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

patientid | name |  type | stage
--------- | ---- | ----- |------
   1      | Mary | true  |  4
   2      | John | false |  1
   
The column *stage* encodes the international classification of the lung cancer:

 * 1-6: Non-Small Cell Lung Cancer (NSCLC): I, II, III, IIIa, IIIb and IV
 * 7-8: Small Cell Lung Cancer (SCLC): Limited, Extensive
 

1. Start the database:
   * On Mac/Linux: open a terminal, go into *h2/bin* and run `sh h2.sh`
   * On Windows: click on the executable `h2w.bat`
2. After being automatically redirect to the web interface of H2, connect with the default parameters

    TODO: include two pictures

3. Create the table *tbl_patient* by executing the following query:

```sql
CREATE TABLE "tbl_patient" (
patientid INT NOT NULL PRIMARY KEY,
name VARCHAR(40) NOT NULL,
type BOOLEAN NOT NULL,
stage TINYINT NOT NULL
)
```

4. Insert some entries:

```sql
INSERT INTO "tbl_patient"
(patientid,name,type,stage) VALUES
(1,'Mary',false, 4),
(2,'John',true, 1);
```

5. Try a first SQL query: "Give me all patients that have a NSCLC at stage IIIa"

```sql
SELECT patientid
FROM "tbl_patient"
WHERE stage = 4 AND type = false
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
     
  * Download [this OWL ontology file](PatientOnto.owl).
  * Go to "File/Open..." to load the ontology file.
  * In the tab "Classes" you can visualize the class hierarchy
  * In the tab "Object properties" you can see the properties *hasNeoplasm* and *hasStage*
  * In the tab "Data properties" you can see the property *hasName*
    
    
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
     inst:ds1/{patientid} a :Patient ; hasName {name}^^xsd:string .
```
 * Source:
```sql
       SELECT patientid, name 
       FROM "tbl_patient"
```
    
#### Mapping 2: Neoplasm
 * Target: 
```turtle
     inst:ds1/{patientid} :hasNeoplasm inst:ds1/neoplasm/{patientid}.
```
 * Source:
```sql
       SELECT patientid 
       FROM "tbl_patient"
```

#### Mapping 3: NSCLC
 * Target: 
```turtle
     inst:ds1/neoplasm/{patientid} a :NSCLC .
```
 * Source:
```sql
       SELECT patientid 
       FROM "tbl_patient"
       WHERE type = false
```

#### Mapping 4: SCLC
 * Target: 
```turtle
     inst:ds1/neoplasm/{patientid} a :SCLC .
```
 * Source:
```sql
       SELECT patientid 
       FROM "tbl_patient"
       WHERE type = true
```
    
#### Mapping 5: Stage IIIa
 * Target: 
 ```turtle
     inst:ds1/neoplasm/{patientid} :hasStage inst:stage-IIIa .
 ```
 * Source:
 ```sql
       SELECT patientid 
       FROM "tbl_patient"
       WHERE stage = 4 AND type = false
  ``` 
    
Similarly to the mapping 5, seven additional mappings can be added
for the other stages.


# SPARQL

1. Enable Ontop in the “Reasoner” menu
2. In the ontop SPARQL tab add all the prefixes

TODO: add a screenshot


3. Run the following query:
```sparql
PREFIX : <http://example.org/hospital#>
PREFIX inst: <http://example.org/hospital/instances/>

SELECT ?name 
WHERE { 
  ?p a :Patient ;
     :hasName ?name ;      :hasNeoplasm ?tumor .  ?tumor :hasStage inst:stage-IIIa .}
``` 

Tip: do a right click on the SPARQL query field to visualize the generated SQL query.

### Inference

Ontop embeds some inference capabilities and is thus capable of answering a query as follows:
```sparql
PREFIX : <http://example.org/hospital#>

SELECT ?x 
WHERE { 
   ?x a :Neoplasm . 
}
```

These inference capabilities can be, for a large part, understood as the ability to infer new mappings
from the original mappings and the ontological axioms.

To convince yourself:

1. Change the target of the mapping 1 by the following:
   ```turtle
   :db1/{patientid} hasName "{name}"^^xsd:string .
   ```
2. Stop and start the reasoner.
3. Run the following query:
   ```sparql
   PREFIX : <http://example.org/hospital#>

   SELECT ?p WHERE {
     ?p a :Patient .
   }
```
4. You should find all the patients in the list. The inferred mapping has been derived from the mapping 2 and the domain of the property *hasNeoplasm*.



# Second dataset

TODO: continue
