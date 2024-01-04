#!/bin/bash
num=$1
inc=1
sum=0
while [ $inc -le $num ]
do
	sum=`expr $sum + $inc`
	inc=`expr $inc + 1`
done
echo "The sum of first $num is $sum"

