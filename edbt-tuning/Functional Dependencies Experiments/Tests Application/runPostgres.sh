#!/bin/bash

# Create dirs
rm -rf joins
rm -rf views
rm -rf viewsKeys

mkdir joins
mkdir views
mkdir viewsKeys

echo joins/output.txt
java -Xmx20G -jar OntowisTester.jar --POSTGRESInt > joins/output.txt
cp src/main/resources/example/table.txt joins/postgresInt.table.txt
cp src/main/resources/example/graph.txt joins/postgresInt.graph.txt

echo views/output.txt
java -Xmx20G -jar OntowisTester.jar --POSTGRESIntView > views/output.txt
cp src/main/resources/example/table.txt views/postgresIntView.table.txt
cp src/main/resources/example/graph.txt views/postgresIntView.graph.txt

# TODO. Change funcCons.txt first

echo viewsKeys/output.txt
java -Xmx20G -jar OntowisTester.jar --mKeysON --POSTGRESIntView > viewsKeys/output.txt
cp src/main/resources/example/table.txt viewsKeys/postgresIntView.table.txt
cp src/main/resources/example/graph.txt viewsKeys/postgresIntView.graph.txt
