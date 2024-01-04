#!/bin/bash
echo "Enter the full qualified path of the file"
read file
if [ -e $file ]
then
	echo "File exists"
	echo "Enter the word to be checked from the file $file"
	read word
	grep -i -w "$word" $file
	if [ $? -eq 0 ]
	then
		echo "$word is found in $file"
	else
		echo "$word not found in $file. Hence exiting"
	exit
	fi
else
	echo "File not found. Check whether the specified path is correct"
	exit 
fi
