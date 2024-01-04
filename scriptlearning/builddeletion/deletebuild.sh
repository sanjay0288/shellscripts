#!/bin/bash
echo "Enter the files to retain"
read count
ls -lrt /home/ubuntu/scriptlearning/builddeletion | awk -F " " 'NR >1 {print $NF}' > filelist
total=$(cat filelist | wc -l)
delcount=`expr $total - $count`
echo $delcount
head -n $delcount filelist
#head -n $delcount filelist | xargs rm -rf
