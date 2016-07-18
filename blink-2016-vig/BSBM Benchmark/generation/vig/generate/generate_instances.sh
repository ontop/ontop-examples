#!/bin/bash

for i in 1 10 100 1000
do  
    java -jar vig.jar --scale=$i
done;
