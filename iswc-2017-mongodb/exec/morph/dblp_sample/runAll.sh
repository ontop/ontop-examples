#!/usr/bin/env bash

for FILE in ../student.queries/*.rq
do
    echo "$FILE"
    ./runSparql.sh $FILE
done

