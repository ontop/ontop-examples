#!/bin/bash

# Create dirs
rm -rf db2

mkdir db2
mkdir db2/joins
mkdir db2/views
mkdir db2/viewsKeys

#echo db2/joins/output.txt
#java -Xmx20G -jar OntowisTester.jar --DB2Int > db2/joins/output.txt
#cp src/main/resources/example/table.txt db2/joins/db2Int.table.txt
#cp src/main/resources/example/graph.txt db2/joins/db2Int.graph.txt

echo db2/views/output.txt
java -Xmx20G -jar OntowisTester.jar --DB2IntView > db2/views/output.txt
cp src/main/resources/example/table.txt db2/views/db2IntView.table.txt
cp src/main/resources/example/graph.txt db2/views/db2IntView.graph.txt

# TODO. Change funcCons.txt first

echo db2/viewsKeys/output.txt
java -Xmx20G -jar OntowisTester.jar --mKeysON --DB2IntView > db2/viewsKeys/output.txt
cp src/main/resources/example/table.txt db2/viewsKeys/DB2IntView.table.txt
cp src/main/resources/example/graph.txt db2/viewsKeys/DB2IntView.graph.txt
