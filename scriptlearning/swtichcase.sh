#!/bin/bash
num1=$1
num2=$2
operator=$3
case $operator in 
	'+')
		sum=$((num1 + num2))
		echo "The sum of the numbers is $sum"
      ;;
      '-')
	      diff=$((num1 -num2))
	      echo "The difference of the numbers is $diff"
      ;;
      *)
	      echo " Enter a valid operator"
      ;;
esac
