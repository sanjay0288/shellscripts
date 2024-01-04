#!/bin/bash
start_time=$(date +%s)
initial_timer=100
end_timer=$((SECONDS + initial_timer))

while [[ $SECONDS -lt $end_timer ]]
do
    printf ' %2d\r' "$((end_timer - SECONDS))"
    sleep 0.1
done
end_time=$(date +%s)
time_difference=$((end_time - start_time))
echo -e "\nTime's up!"
echo "Script execution time: $time_difference seconds"

