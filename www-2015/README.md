#  Supplemental materials for the WWW 2015 Demo 
## How to Stay Ontop of Your Data: Databases, Ontologies and More
 
 
 - All the data for the demo is available at the npd-benchmark repository  https://github.com/ontop/npd-benchmark
 
- The ready-to-run Jetty package for the Sesame Workbench and Protege with ontop plugin can be downloaded from the  [ontop website](http://ontop.inf.unibz.it/?page_id=11)

- The files used for the demo of Protege and of Sesame workbench are:
 - the ontology [npd-v2-ql_a.owl](https://github.com/ontop/npd-benchmark/tree/master/ontology/npd-v2-ql_a.owl) that can be find in `npd-benchmark/ontology/`
 - the mappings [npd-v2-ql_a.obda](https://github.com/ontop/npd-benchmark/tree/master/mappings/mysql/spatial/npd-v2-ql_a.obda) in `npd-benchmark/mappings/mysql/spatial/`
 - the dump  of the database [npd-data-dump.sql.7z](https://github.com/ontop/npd-benchmark/tree/master/data/mysql/spatial) in `npd-benchmark/data/mysql/spatial/`
 - the query Q6 [06.q](https://github.com/ontop/npd-benchmark/tree/master/queries/06.q) in `npd-benchmark/queries/`

 
- For the consistency check in Protege, use the files in `npd-benchmark/ontology/consistency checking/`:
 - [npd-v2-ql_inconsistent.owl](https://github.com/ontop/npd-benchmark/tree/master/ontology/consistency%20checking/npd-v2-ql_inconsistent.owl) is the inconsistent ontology
 - [npd-v2-ql_consistent.owl](https://github.com/ontop/npd-benchmark/tree/master/ontology/consistency%20checking/npd-v2-ql_consistent.owl) is the consistent ontology
 - The mapping file [npd-v2-ql_a.obda](https://github.com/ontop/npd-benchmark/tree/master/mappings/mysql/spatial/npd-v2-ql_a.obda) needs to be renamed in order to be load by Protege:
    -  rename it to `npd-v2-ql_inconsistent.obda` when loading the inconsistent ontology
    -  rename it to `npd-v2-ql_consistent.obda` when loading the consistent ontology 
