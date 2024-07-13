#!/bin/bash

counter=0

for i in {a..z}
do
    for j in `ls /usr/bin/[$i]*`
    do
        counter=$((counter+1))
    done
    echo "$i $counter"
    let counter=0
done
