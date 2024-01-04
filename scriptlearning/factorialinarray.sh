#!/bin/bash
a="1 2 3 4 5"
for iterator in $a
do
	factorial=1
	count=1
	while [ $count -le $iterator ]
	do
		factorial=$((factorial * count))
		count=$((count + 1))
	done
	echo "Factorial of $iterator is $factorial"
done

