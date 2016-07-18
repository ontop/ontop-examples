Run Instructions
-----

1) Fill configuration.conf

2) Copy configuration.conf and ontology-mappings/* to src/main/resources folder

3) Copy queries/Templates folder in src/main/resources

4) Run:

~~~
java -jar mixer.jar --runs=10
~~~

Results will be found in src/main/resources/statsMixer.txt file.