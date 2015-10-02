#!/bin/bash

## su db2inst2
db2 connect to wisc100m

FILE=$1

db2 -tvsf $FILE
