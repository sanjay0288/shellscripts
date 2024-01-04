#!/bin/bash
nterm=$1
num1=0
num2=1
sum=0
count=0
while [ $count -le $nterm ]
do
	echo "$num1"
	sum=$((num1 + num2))
	num1=$num2
	num2=$sum
	count=$((count + 1))
done
