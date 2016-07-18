#!/bin/bash

DB_NAME=

java -jar vocabulary-counter.jar --owl=bsbm.owl --obda=bsbm-mysql-vig.obda --log=vocabulary-log_${DB_NAME}.txt