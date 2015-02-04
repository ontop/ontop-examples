 Supplemental materials for the submission "How to Stay {Ontop} of Your Data: Databases, Ontologies and More"
 ------------------------------------------------------------------
 
 - The data for the demo is available at the npd-benchmark repository  https://github.com/ontop/npd-benchmark
 
The Jetty prepacked package for the Sesame Workbench and the Protege ontop plugin can be downloaded by our [website](http://ontop.inf.unibz.it/?page_id=11)

The files used for the demo of Protege and of Sesame workbench are:
- the ontology [npd-v2-ql_a.owl](https://github.com/ontop/npd-benchmark/tree/master/ontology/npd-v2-ql_a.owl) that can be find in npd-benchmark/ontology/
- the mappings [npd-v2-ql_a.obda](https://github.com/ontop/npd-benchmark/tree/master/mappings/mysql/spatial/npd-v2-ql_a.obda) in npd-benchmark/mappings/mysql/spatial/
- the dump  of the database [npd-data-dump.sql.7z](https://github.com/ontop/npd-benchmark/tree/master/data/mysql/spatial) in npd-benchmark/data/mysql/spatial/npd-data-dump.sql.7z
- the query Q6 [06.q](https://github.com/ontop/npd-benchmark/tree/master/queries/06.q) in npd-benchmark/queries/

 
For the consistency check in Protege use the files in npd-benchmark/ontology/consistency checking/:
- [npd-v2-ql_inconsistent.owl](https://github.com/ontop/npd-benchmark/tree/master/ontology/consistency%20checking/npd-v2-ql_inconsistent.owl) contains the inconsitent ontology
- [npd-v2-ql_consistent.owl](https://github.com/ontop/npd-benchmark/tree/master/ontology/consistency%20checking/npd-v2-ql_consistent.owl) contains the consistent ontology
- The mapping file [npd-v2-ql_a.obda](https://github.com/ontop/npd-benchmark/tree/master/mappings/mysql/spatial/npd-v2-ql_a.obda) needs to be renamed to be authomatically load by Protege:
 - to be load with the inconsisent ontology rename it as npd-v2-ql_inconsistent.obda
 - to be load with the consistent ontology rename it as npd-v2-ql_consistent.obda 
