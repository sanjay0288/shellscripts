#!/bin/bash
#cpuusage=$(df -h | awk '$NF == "/" {print $(NF-1)}' | tail -n 1 | cut -d '%' -f 1)
cpuusage=$(df -h . | awk -F" " 'NR==2 {print $(NF-1)}' | sed 's/%//g')
echo "Percentage Disk Usage: ${cpuusage}"
if [ $cpuusage -ge 30 ]
then
	#echo "Memory reached threshold value" | sendmail -s "Disk Usage" -c "sanjay0288@gmail.com"
	echo -e "Subject: High utilization Alert\n\nMemory reached threshold value\nCurrent usage is $cpuusage% and threshold set is 30%" | sendmail -t "sanjay0288@gmail.com"
fi

