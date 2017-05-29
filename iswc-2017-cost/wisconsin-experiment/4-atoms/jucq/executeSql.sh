#!/bin/bash

FILE=$1

if ! test $# -ge 1
then
    echo "Usage: `basename $0` sqlQueryFile"
    exit 1
fi

PGOPTIONS='--statement-timeout=60min' PGPASSWORD=postgres psql -U postgres -h localhost --dbname=ontowis -f $FILE > /dev/null 

exit 0
