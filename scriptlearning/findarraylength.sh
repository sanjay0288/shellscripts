#!/bin/bash

a="1 10 20 30"
count=0
for iterator in $a
do
	echo "The $count  elment of array is $iterator"
	count=$((count + 1))

done
echo "The length of the array is $count"
