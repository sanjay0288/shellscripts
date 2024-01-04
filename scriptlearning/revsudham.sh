#!/bin/bash
echo "Enter the string"
read string
length=`expr length "$string"`
i=0
while [ $i -lt $length ]
do
	s+=`echo "$string" | awk -F "" '{print$NF}'`
	i=`expr $i + 1`
	string=`echo "$string" | sed 's/.$//'`
done
echo "The reverse string is $s"
