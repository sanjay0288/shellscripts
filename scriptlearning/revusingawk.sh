#!/bin/bash
echo "enter the string"
read stri
char=$(echo "$stri" | wc -c)
ch=$char
num=1
result=""

while [ $ch -gt $num ]
do
	echo "$num"
	letter=$(echo "$stri" | awk -v n=$num '{print substr($0, n, 1)}')
	#echo "sanjay" | awk -v n=1 '{print substr($0, n, 1)}'
    	result="$letter$result"
    	num=$((num + 1))
done

echo "$result"

