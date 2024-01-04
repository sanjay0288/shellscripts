#!/bin/bash
grep -rl $1 * > output
if [ $? -eq 0 ]
then	
	echo "The following files contain the pattern"
	cat output
else
	echo "The pattern doesn't contain in any of the files or check the pattern"
fi

