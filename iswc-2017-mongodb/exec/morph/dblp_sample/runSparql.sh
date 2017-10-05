#!/usr/bin/env bash

FILE=$1

FILENAME=$(basename $FILE)

#if ! test $# -ge 1
#then
#    echo "Usage: `basename $0` sparqlFile.rq"
#    exit 1
#fi

MORPH_DIST_JAR=/Users/xiao/src/morph-xr2rml/morph-xr2rml-dist/target/morph-xr2rml-dist-1.0-SNAPSHOT-jar-with-dependencies.jar

MORPH_CONFIG_DIR=/Users/xiao/Development/obda-mongo/ontop-mongo/src/test/resources/dblp/morph

MORPH_CONFIG_FILE_TEMPLATE=morph.properties

MORPH_CONFIG_FILE=output/${FILENAME}.properties

SPARQL_QUERY_DIR=/Users/xiao/Development/obda-mongo/ontop-mongo/src/test/resources/dblp/student.queries

cat ${MORPH_CONFIG_DIR}/${MORPH_CONFIG_FILE_TEMPLATE} | sed "s&query.sparql&../student.queries/${FILE}&g" > ${MORPH_CONFIG_FILE}

java -jar ${MORPH_DIST_JAR} --configDir ${MORPH_CONFIG_DIR} --configFile ${MORPH_CONFIG_FILE} > output/${FILENAME}.out