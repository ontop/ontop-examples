 Supplemental materials for the submission "How to Stay {Ontop} of Your Data: Databases, Ontologies and More"
 ------------------------------------------------------------------
 
 - The data for the demo is available at the npd-benchmark repository  https://github.com/ontop/npd-benchmark

The files used for the demo of Protege and of Sesame workbench are:
- the ontology npd-v2-ql_a.owl that can be find in [npd-benchmark/ontology/](https://github.com/ontop/npd-benchmark/tree/master/ontology)
- the mappings npd-v2-ql_a.obda in [npd-benchmark/mappings/mysql/spatial/](https://github.com/ontop/npd-benchmark/tree/master/mappings/mysql/spatial)
- the dump  of the database npd-data-dump.sql.7z in [npd-benchmark/data/mysql/spatial/](https://github.com/ontop/npd-benchmark/tree/master/data/mysql/spatial)
- the query Q6 06.q in [npd-benchmark/queries/](https://github.com/ontop/npd-benchmark/tree/master/queries)

 
For the consistency check in Protege use the files in [npd-benchmark/ontology/consistency checking/](https://github.com/ontop/npd-benchmark/tree/master/ontology/consistency%20checking):
- npd-v2-ql_inconsistent.owl contains the inconsitent ontology
- npd-v2-ql_consistent.owl contains the consistent ontology
- The mapping file npd-v2-ql_a.obda needs to be renamed to be authomatically load by Protege:
 - to be load with the inconsisent ontology rename it as npd-v2-ql_inconsistent.obda
 - to be load with the consistent ontology rename it as npd-v2-ql_consistent.obda 
