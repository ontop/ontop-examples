#!/bin/bash

makeFiles () {

    cnt=1
    rm -f jucq-${cnt}.sql
    cat jucq-unfoldings-out.ontop | while read line
				    do
					if echo "$line" | grep -vq !!SEPARATOR!!
					then
					    echo "$line" >> jucq-${cnt}.sql
					else
					    cnt=$((cnt+1))
					    rm -f jucq-${cnt}.sql
					fi
				    done
    
}

# makeFiles

for FILE in *.sql
do
    echo "Doing $FILE"
    time ./executeSql.sh $FILE
    sleep 120
done
exit 0
