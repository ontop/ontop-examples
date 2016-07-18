Generate
-----

The procedure in the remainder of this document assumes that an instance for bsbm with 10000 products has been generated through the BSBM generator, and that it has been loaded in a MySQL database.

1) create folder src/main/resources

2) Set up database connection parameters in configuration.conf. 
2.1) Set the pumper-type parameter in configuration.conf, to one between [DB, OBDA, RAND]

~~~~
cp configuration.conf src/main/resources 
cp ontology-mappings/* src/main/resources 
~~~

3)

~~~
$ ./generate_instances.sh
~~~