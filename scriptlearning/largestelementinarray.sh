#!/bin/bash
a="1 2 4 8 100 9"
max=0
for iterator in $a
do
	if [ $iterator -gt $max ]
	then
		max=$iterator
	fi
done
echo "The largest element is $max"
