#!/usr/bin/env bash

for FILE in $1/*.out
do
    FILENAME=$(basename $FILE)
    TIME=$(cat $FILE | grep "Overall SPARQL query processing time" | awk '{print $13}' | sed -n "s/\([0-9]*\)ms./\1/p" )
    echo $FILE "," $TIME
done

