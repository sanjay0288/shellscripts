#!/bin/bash
if [ $1 -gt $2 ] && [ $1 -gt $3 ]
then
	echo "$1 is biggest"
elif [ $2 -gt $1 ] && [ $2 -gt $3 ]
then
	echo "$2 is biggest"
elif [ $3 -gt $1 ] && [ $3 -gt $2 ]
then
	echo "$3 is biggest"
else
	echo "$1 $2 $3 are equal"
fi

