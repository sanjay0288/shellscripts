#!/bin/bash
apachelog=/home/ubuntu/scriptlearning/apacheerrorlog.txt
if grep -i "error" $apachelog
then
	echo -e "Subject: Apache log contains error\n\n Apache log contains error entries."| sendmail -t "sanjay0288@gmail.com"
fi


