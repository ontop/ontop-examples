#!/bin/bash

# This script assumes you have the Berlin SPARQL Benchmark Generator 
# binary (generate) in . folder.
# ./generate is the command to invoke the BSBM generator 


for NPRODS in 10000 100000 1000000
do
    ./generate -s sql -pc $NPRODS
    rm -rf bsbm_${NPRODS}products
    mv dataset bsbm_${NPRODS}products
done