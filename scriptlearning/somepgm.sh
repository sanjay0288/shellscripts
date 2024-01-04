#!/bin/bash
echo "Enter the string"
read string
length=`expr length "$string"`
i=0
while [ $i -lt $length ]
do
	s+=`echo "$string" | awk -F "" -v iterator=$i '{print$(NF -iterator)}'`
	i=`expr $i + 1`
done
echo "The reverse string is $s"
