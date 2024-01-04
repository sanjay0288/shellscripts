#!/bin/bash
stri=$1
length=${#stri}
revstr=""
while [ $length -ge 0 ]
do
	revstr=$revstr${stri:$length:1}
	length=$((length -1))
done
echo "$revstr"
