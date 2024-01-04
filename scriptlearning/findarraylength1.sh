#!/bin/bash
a=("10" "20" "30" "40" "50")
echo "The length of the array is : ${#a[@]}"
for itr in ${a[@]}
do
	echo "$itr"
done
