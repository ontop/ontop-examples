#!/bin/bash

FILE=$1

psql --user=xxx --dbname=ontowis_100m --password -f $FILE 
