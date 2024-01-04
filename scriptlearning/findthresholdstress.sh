#!/bin/bash
stress --cpu 16 --timeout 30 &
sleep 25
cpuusage=$(top -bn 1 | awk '/Cpu\(s\)/{print $2}' | cut -d. -f1)
echo "Percentage Disk Usage: ${cpuusage}"
if [[ $cpuusage == *"u"* ]]
then
	echo " String encountered"
elif [ $cpuusage -ge 80 ]
then
	echo -e "Subject: High utilization Alert\n\nMemory reached threshold value\nCurrent usage is $cpuusage% and threshold set is 80%" | sendmail -t "sanjay0288@gmail.com"
fi

