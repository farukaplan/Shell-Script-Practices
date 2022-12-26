#!/bin/bash

array=()
length=$#
i=0

while [ $i -ne $length ]
do 
    array[$i]=$1
    shift
    i=$((i+1))
done

for (( i = 0; i < ${#array[@]}; i++ ))
do
    for (( j = $i; j < ${#array[@]}; j++ ))
    do 
        if  [ ${array[$i]} -gt ${array[$j]} ]
        then
            temp=${array[$j]}
            array[$j]=${array[$i]}
            array[$i]=$temp
        fi
    done
done

 printf "\nSorted numbers are :\n"
 
 echo ${array[*]}
   
