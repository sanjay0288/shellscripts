#!/bin/bash
num1=$1
num2=$2
if [ $num1 -lt $num2 ]
then
	echo " $num1 is smallest"
elif [ $num2 -lt $num1 ]
then
	echo "$num2 is smallest"
else
	echo "$num1 and $num2 are equal"
fi

