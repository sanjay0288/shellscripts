#!/bin/bash
stress --cpu 1 --timeout 30 &
sleep 10
log_file=/home/ubuntu/scriptlearning/processmonitor.log
threshold=60

#processes=$(ps aux --sort=%cpu | grep -v USER | awk -v threshold="$threshold" '$3 > threshold { print $0}') # This prints the entire details
#top_output=$(top -b -n 1 -o %CPU | awk -v threshold="$threshold" '$9 > threshold {print $0}') # This prints the entire details

processes=$(ps aux --sort=%cpu | grep -v USER | awk -v threshold="$threshold" '$3 > threshold {print $11}')
top_output=$(top -b -n 1 -o %CPU | awk -v threshold="$threshold" 'NR > 7 && $9 > threshold {print $12}')
echo "$processes"
if [ -n "$processes" ]
then
       	echo -e " $(date) \t Processes exceeding $threshold% CPU usage:  \t $processes" >> $log_file
	echo -e " $(date) \t Processes exceeding $threshold% CPU usage using top: \t $top_output" >> $log_file
	#todo sending email statement comes here
fi
