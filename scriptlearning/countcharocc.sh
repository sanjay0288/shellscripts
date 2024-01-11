#!/bin/bash
stri=$1
chtofind=$2
occ=$(echo "$stri" | grep -o "$chtofind" | wc -l)
echo "$chtofind is repeated $occ times in the string $stri"
echo "Added this line for poll SCM"
echo "Added this line for github push using webhook"
