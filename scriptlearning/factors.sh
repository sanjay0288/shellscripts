#!/bin/bash
num=$1
count=1
while [ $count -le $num ]
do
	if [ $((num % count)) -eq 0 ]
	then
		echo "$count"
	fi
	count=$((count + 1))
done

