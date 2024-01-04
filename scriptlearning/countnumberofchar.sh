#!/bin/bash
filename=$1
linecount=1
while read line
do
	count=$(echo -n "$line" | wc -c)
	echo "Line number $linecount has $count characters"
	linecount=`expr $linecount + 1`
done < $filename
