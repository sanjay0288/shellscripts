#!/bin/bash
#cpuusage=$(df -h | awk '$NF == "/" {print $(NF-1)}' | tail -n 1 | cut -d '%' -f 1)
cpuusage=$(df -h | awk -F" " '{print $(NF-1)}' | head | cut -d ' ' -f1 | sed 's/%//g')
echo "Percentage Disk Usage: ${cpuusage}"

