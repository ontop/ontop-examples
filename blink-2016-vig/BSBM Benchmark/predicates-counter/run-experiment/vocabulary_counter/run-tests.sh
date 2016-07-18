#!/bin/bash

: ${1?"Usage: $0 DB_NAME. Remember to fill the obda and configuration files first!"}

DB_NAME=$1

java -jar vocabulary-counter.jar --owl=bsbm.owl --obda=bsbm-mysql-vig.obda --log=vocabulary-log_${DB_NAME}.txt