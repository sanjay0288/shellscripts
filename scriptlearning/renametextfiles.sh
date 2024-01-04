#!/bin/bash
filelist=$(ls "$1"*.txt)
echo "$filelist"
for iterator in $filelist
do
        filename=$(echo "$iterator" | awk -F "/" '{print $NF}' | awk -F "." '{print $1}')
        #echo "$filename"
        mv "$iterator" "$1$filename.html"
done
newfilelist=$(ls "$1"*.html)
for iterator in $newfilelist
do
        tempvar=$(echo "$iterator" | awk -F "/" '{print $NF}')
        echo $tempvar
done

