#!/bin/bash
echo "Enter the path to check whether the given input is a file or directory or link"
read inputpath
if [ -L $inputpath ]
then
	echo " The given input $inputpath is a link"
elif [ -d $inputpath ]
then
	echo "The given input $inputpath is a directory"
elif [ -f $inputpath ]
then
	echo "The given input $inputpath is a file"
else
	echo "The path $inputpath is incorrect or it does not exist"
fi
		

