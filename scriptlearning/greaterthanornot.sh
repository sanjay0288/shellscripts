#!/bin/bash
if [ $1 -gt 7 ]
then
	echo "The number $1 is greater than 7"
elif [ $1 -eq 7 ]
then 
	echo "The number $1 is equal to 7"
else
	echo "The number $1 is less than 7"
fi
