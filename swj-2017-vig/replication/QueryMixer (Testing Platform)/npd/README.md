Content
------

Run Instructions
-----

1) Fill configuration.conf

2) Copy configuration.conf and ontology-mappings/* to src/main/resources folder

3) Copy queries_[DB,OBDA]/Templates folder in src/main/resources

4) Run:

~~~
java -jar mixer.jar --runs=3
~~~

Results will be found in src/main/resources/statsMixer.txt file.

__Note: Why two different sets of queries for DB and OBDA modes:__ Queries 11 and 12 contain two fixed strings that vig can generate only when executed in OBDA mode, because it is the only mode recognizing fixed-domain columns. Therefore, the two strings were replaced with DB-specific values in the experiments for the DB mode.