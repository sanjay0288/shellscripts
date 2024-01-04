#!/bin/bash
filename=$1
revstr=""
while read line
do
	revstr="$line \n $revstr"
done < $filename
echo -e "$revstr"
