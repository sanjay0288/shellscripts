#!/bin/bash
echo "Current script process identifier is $$"
sleep 5 &
background_pid=$!
echo "Sleep statement background process started with identifier $background_pid"
wait $background_pid
echo "Learning exit status the exit status of the background process is $?"
echo "Process identifier of the last background process is $!"
