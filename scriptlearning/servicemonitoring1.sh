#!/bin/bash
services="sshd Grafana Kibana Jenkins Tomcat"
foundflag=false
for iterator in $services
do
	ps -C $iterator
	if [ $? -ne 0 ]
	then
		foundflag=true
		echo "$iterator" >> notrunningservices.txt
	fi 
done
if [ $foundflag ]
then
	echo -e "Subject: Service not running alert\n\n $(cat notrunningservices.txt)" | sendmail -t "sanjay0288@gmail.com"
	rm notrunningservices.txt
fi
