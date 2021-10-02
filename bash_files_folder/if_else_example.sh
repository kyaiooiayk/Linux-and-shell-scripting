#! /bin/bash

NUM1=1
NUM2=2
if [ $NUM1 -eq $NUM2 ]
then
    echo "$NUM1 is equal to $NUM2"
elif [ $NUM1 -lt $NUM2 ]
then
    echo "$NUM1 is less than $NUM2"
else
    echo echo "$NUM1 is greater than $NUM2"
fi