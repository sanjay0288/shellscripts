#!/bin/bash
start_time=$(date +%s)
for i in  {300..1}
do
	echo "$i"
	sleep 1
done
end_time=$(date +%s)
time_difference=$((end_time - start_time))
echo "Your time is up"
echo "Script execution time: $time_difference seconds"
