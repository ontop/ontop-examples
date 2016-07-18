#!/bin/bash

# Usage: ./replace_n-th_line.sh line1 linenum1 line2 linenum2 ... file

NUM_ARGS=$((${#}-1))
FILE=${!#}

for(( i=1; i<= $NUM_ARGS; i++ ))
do
    if [ $(( $i % 2)) -eq 1 ]; 
    then 
	LINE=${!i} 
    else 
	LINE_NUM=${!i}
	echo $LINE
	echo $LINE_NUM
	
	echo "sed "${LINE_NUM}s,.*,${LINE}," $FILE > ${FILE}.tmp"
	sed "${LINE_NUM}s,.*,${LINE}," $FILE > ${FILE}.tmp
	cat ${FILE}.tmp > $FILE
    fi
done

rm ${FILE}.tmp
