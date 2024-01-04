#!/bin/bash
services="sshd Grafana"
for iterator in $services
do
	ps -C $iterator
	if [ $? -ne 0 ]
	then
		echo "$iterator is not running"
		echo -e "Subject: Service not running Alert\n\n$iterator service is not running" | sendmail -t "sanjay0288@gmail.com"
	fi 
done
