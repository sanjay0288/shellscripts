#!/bin/bash
filename=$1
while read line
do
	echo -n "$line" | grep -i "error"
	if [ $? -eq 0 ]
	then
		echo -e "Subject: Apache log contains error\n\n The entry is $line"| sendmail -t "sanjay0288@gmail.com"
	fi
done < $filename

