Generate
-----

1) create folders src/main/resources and src/main/resources/csvs

2) Set up database connection parameters in configuration.conf

~~~~
cp configuration.conf src/main/resources 
~~~

3) Retrieve the desired OBDA mapping file, set-up the connection parameters in it, and copy it in src/main/resources

3) Consult the --help parameter to set-up the generation parameters (e.g., --scale=5)

~~~
$ java -jar vig --help
~~~

4) Run VIG. The CSV files containing the generated data will be available in src/main/resources/csvs

5) Use the schema files in ../DB\ Creation to create an empty database instance. Use the csv files produced by VIG to pump the database.