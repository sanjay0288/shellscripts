#!/bin/bash
echo "Enter the first number"
read num1
echo "Enter the second number"
read num2
sum=`expr $num1 + $num2`
echo "The sum is $sum"
diff=`expr $num1 - $num2`
echo "The difference is $diff"
prod=`expr $num1 \* $num2`
echo "Product of numbers is $prod"
modulus=`expr $num1 % $num2`
echo "The remainder is $modulus"
quot=`expr $num1 / $num2`
echo "The quotient is $quot"

