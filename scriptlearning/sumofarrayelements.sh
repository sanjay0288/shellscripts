#!/bin/bash
arr="1 2 3 4 5"
sum=0
for iterator in $arr
do 
	sum=$((sum + $iterator))
done
echo "The sum of the array is $sum"
