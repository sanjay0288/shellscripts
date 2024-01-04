#!/bin/bash
num=$1
factorial=1
while [ $num -gt 0 ]
do
	factorial=$((factorial * num))
	num=$((num -1))
done
echo "$factorial"
