#!/bin/bash
echo "Number of arguments is "$#
echo "Script name is " $0
echo "All arguments as a single string is "$*
echo "Array notation of the arguments is " $@
echo "Individual arguments are"
for arg in "$@"; do
    echo "$arg"
done
