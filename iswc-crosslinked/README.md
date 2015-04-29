ISWC 2015 
Ontology-based Integration of Cross-linked Datasets
==============

This repository contains the supplemental materials  for ontop ISWC 2015 publication.
We provide :

* the [execution Times](executionTimes) of the experiments divided by number of datasets and percentage of equality.
* the [log files](logFiles) of the experiments 
* the [queries](queries) executed on 2 datasets and on 3 datasets
* the [resources](resources/sameAs/ontowis) needed to run the experiments



To test the Ontop system use SameAs.jar and the folder resources.

To create the database Wisconsin refers to the Wisconsin benchmark.
Modify the obda files in [resources](resources) so that they will connect to your database.

Add the project parameters to the jar as follows:

 `java -jar SameAs.jar --obdaParameter numberOfRuns`
 
In particular

* To test sameAs between 2 DataSets with equality 10% and selectivities 0,001%, 0,01% and 0,1% run:
 `java -jar -Xmx20G SameAs.jar --POSTGRES2DSten 1 `

* To test sameAs between 2 DataSets with equality 30% and selectivities 0,001%, 0,01% and 0,1% run:
 `java -jar -Xmx20G SameAs.jar --POSTGRES2DSthirty 1 `

* To test sameAs between 2 DataSets with equality 60% and selectivities 0,001%, 0,01% and 0,1% run:
 `java -jar -Xmx20G SameAs.jar --POSTGRES2DSsixty 1 `

* To test sameAs between 3 DataSets with equality 10% and selectivities 0,001%, 0,01% and 0,1% run:
 `java -jar -Xmx20G SameAs.jar --POSTGRES3DSten 1 `

* To test sameAs between 3 DataSets with equality 30% and selectivities 0,001%, 0,01% and 0,1% run:
 `java -jar -Xmx20G SameAs.jar --POSTGRES3DSthirty 1 `

* To test sameAs between 3 DataSets with equality 60% and selectivities 0,001%, 0,01% and 0,1% run:
 `java -jar -Xmx20G SameAs.jar --POSTGRES3DSsixty 1 `

The results will be provided in [resources/results](resources/results)





