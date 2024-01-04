#!/bin/bash
files=("/home/ubuntu/practice/logs/sanjay*")
echo $files
for file in $files
do
	if grep -i "error" "$file"
	then
		sed 's/error/correct/g' $file
	else
		echo "error does not exist in $file"
	fi
done
