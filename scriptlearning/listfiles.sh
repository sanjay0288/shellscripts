#!/bin/bash
pat=$1
grep -rl "$pat" * > ou.txt
if [ $? -eq 0 ]
then
	echo " The following files contain the pattern"
	cat ou.txt
fi


