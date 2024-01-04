#!/bin/bash
stri=$1
revstr=$(echo $stri | rev)
if [ $stri == $revstr ]
then
	echo "Entered string $stri is a palindrome"
else
	echo "Entered string $stri is not a palindrome"
fi
