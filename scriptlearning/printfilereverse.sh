#!/bin/bash
filename=$1
count=$(wc -l < "$filename")
echo "Line count is $count"
while [ $count -gt 0 ]
do
	head -n $count "$filename" | tail -n 1
	count=`expr $count - 1`
done
