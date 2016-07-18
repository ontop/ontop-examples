#!/bin/bash


#bsbm_1000000products
#bsbm_100000products
#bsbm_10000products
#bsbm_100_of10000products_vig1_8 
#bsbm_10_of10000products_vig1_8
#bsbm_1_of10000products_vig1_8


# NPD Tests
#for i in 100 
#do
 
#DB_NAME=bsbm_${i}_of10000products_vig1_8

#echo Script: Doing $DB_NAME

#./replace-n-lines.sh "connectionUrl   jdbc:mysql://10.7.20.39/$DB_NAME" 14 bsbm-mysql-vig.obda

#java -jar -Xmx90G vocabulary-counter.jar --owl=bsbm.owl --obda=bsbm-mysql-vig.obda --log=vocabulary-log_${DB_NAME}.txt

#done

for i in 1000000 
do
DB_NAME=bsbm_${i}products

echo Script: Doing $DB_NAME

./replace-n-lines.sh "connectionUrl   jdbc:mysql://localhost/$DB_NAME" 14 bsbm-mysql-vig.obda

java -jar -Xmx90G vocabulary-counter.jar --owl=bsbm.owl --obda=bsbm-mysql-vig.obda --log=vocabulary-log_${DB_NAME}.txt

done
