ESWC 2018 canonical iri

==============

This repository contains the supplemental materials  for ontop ESWC 2018 .
We provide :

* the [execution Times](executionTimes) of the experiments divided by number of datasets and percentage of equality
* the [log files](logFiles) of the experiments 
* the [queries](queries) executed on 2 datasets and on 3 datasets
* the [tables](tables) to create the database
* the [resources](resources) needed to run the experiments


To test the Ontop system use [CanonicalIRIOntowis.jar](CanonicalIRIOntowis.jar) and the folder [resources](resources).

To create the database use the sql files in the folder [tables](tables).
Modify the obda files in [resources] so that they will connect to your database.

Add the project parameters to the jar as follows:

 `java -jar CanonicalIRIOntowis.jar --obdaParameter numberOfRuns`
 
In particular

* To test canonical iri between 2 DataSets with equality 10% and selectivities 0,001%, 0,01% and 0,1% run:

 `java -jar -Xmx20G CanonicalIRIOntowis.jar --POSTGRES2DSten 1 `

* To test canonical iri between 2 DataSets with equality 30% and selectivities 0,001%, 0,01% and 0,1% run:

 `java -jar -Xmx20G CanonicalIRIOntowis.jar --POSTGRES2DSthirty 1 `

* To test canonical iri between 2 DataSets with equality 60% and selectivities 0,001%, 0,01% and 0,1% run:

 `java -jar -Xmx20G CanonicalIRIOntowis.jar --POSTGRES2DSsixty 1 `

* To test canonical iri between 3 DataSets with equality 10% and selectivities 0,001%, 0,01% and 0,1% run:

 `java -jar -Xmx20G CanonicalIRIOntowis.jar --POSTGRES3DSten 1 `

* To test canonical iri between 3 DataSets with equality 30% and selectivities 0,001%, 0,01% and 0,1% run:

 `java -jar -Xmx20G CanonicalIRIOntowis.jar --POSTGRES3DSthirty 1 `

* To test canonical iri between 3 DataSets with equality 60% and selectivities 0,001%, 0,01% and 0,1% run:

 `java -jar -Xmx20G CanonicalIRIOntowis.jar --POSTGRES3DSsixty 1 `

The results will be provided in [resources/results](resources/results) .





