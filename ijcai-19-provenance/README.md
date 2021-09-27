# OntoProv Tutorial

## Folder Content

~~~
.
├── npd
│   ├── add_provenance_lower.psql
│   ├── lower-case.psql
│   ├── npd.psql
│   ├── obda
│   └── revert-case.psql
├── ontoprov
│   ├── jetty-distribution-9.4.6.v20170531
│   └── README.md
├── provsql
│   ├── doc
│   ├── docker
│   ├── LICENSE
│   ├── Makefile
│   ├── provsql.control
│   ├── README.md -> doc/provsql.md
│   ├── sql
│   ├── src
│   ├── test
│   └── where_panel
└── README.md
~~~

## 0) Install provsql (follow the README.md file)

Ontoprov has only been tested with the version of provsql used for the IJCAI paper of 2019. Such version of provsql is provided in the `provsql` directory.

Follow the guide to install `provsql` as described in the `provsql/README.md` file. 

## 1) Download the NPD dataset (PostgreSQL version)

~~~
$> wget https://github.com/ontop/npd-benchmark/raw/master/data/postgres/npd.psql
~~~

## 2) Create the NPD dataset
### 2a) Create the DB

~~~
$> psql -U {db_user} -p {db_port}
psql> create database npd_prov;
psql> \q
~~~

### 2b) Populate the DB

~~~
$> cd npd
$> touch output.txt      # Create a file for storing the outcomes of the operations (e.g., use cat output.txt to check the outcome after each psql command)
$> chmod a+wr output.txt # Give all rights to read/write the file
$> PGPASSWORD={db_password} sudo -u {db_user} psql --user={db_user} --dbname=npd_prov --port={db_port} -o output.txt -f npd.psql
~~~

## 3) Add the provenance

### 3a) First, we need to convert all table names to lower-case, because I did not find a way to have provsql understand case-sensitive names when UUIDs are created.

~~~
$> PGPASSWORD={db_password} sudo -u {db_user} psql --user={db_user} --dbname=npd_prov --port={db_port} -o output.txt -f lower-case.psql
~~~

### 3b) Create provsql UUIDs (It will add an additional column containing the UUIDs to each table of NPD)

~~~
$> PGPASSWORD={db_password} sudo -u {db_user} psql --user={db_user} --dbname=npd_prov --port={db_port} -o output.txt -f add_provenance_lower.psql
$> PGPASSWORD=postgres sudo -u postgres psql --user=postgres --dbname=npd_prov --port=5434 -f add_provenance_lower.sql
~~~

### 3c) Restore the original table names' cases

~~~
$> PGPASSWORD={db_password} sudo -u {db_user} psql --user={db_user} --dbname=npd_prov --port={db_port} -o output.txt -f revert-case.psql
~~~

## 4) Launch OntoProv

~~~
$> cd ontoprov/jetty-distribution-9.4.6.v20170531
$> ./start-jetty.sh # jetty will be under localhost:8080 
~~~

## 5) Create the NPD repository

### 5a) Add the connection parameters to your `npd_prov` database into the .properties file in `/ontoprov-tutorial/npd/obda`
### 5b) From the jetty homepage, click on the left "New repository" and provide the .owl, .obda, and .properties files
## 5c) Use the `Query` menu to issue SPARQL queries to ontoprov, such as the query `npd/obda/query.sparql`. Provenance info will be contained in the `GRAPH` variables.
