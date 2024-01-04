#!/bin/bash
num1=$1
num2=$2
if [ $num1 -eq $num2 ]
then
	echo "The numbers are equal $num1 $num2"
else
	echo "The numbers $num1 $num2 are not equal"
fi
