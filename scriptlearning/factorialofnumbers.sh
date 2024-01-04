#!/bin/bash
num=$1
prod=1
inc=1
while [ $inc -le $num ]
do
	prod=`expr $prod \* $inc`
  	inc=`expr $inc + 1`
done
echo "The factorial of first $num is $prod"
	
