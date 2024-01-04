#!/bin/bash
num1=$1
num2=$2
if [ $num1 -gt $num2 ]
then
	echo " $num1 is biggest"
elif [ $num2 -gt $num1 ]
then
	echo "$num2 is biggest"
else
	echo "$num1 and $num2 are equal"
fi

