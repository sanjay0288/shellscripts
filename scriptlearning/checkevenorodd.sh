#!/bin/bash
if [ `expr $1 % 2` -eq 0 ]
then
        echo "Given number $1 is even"
else
        echo "Given number $1 is odd"
fi
