#!/bin/bash

# CONFIG SECTION
duckDnsToken='' # Insert your API token here
domain='' # domain name, can be single or comma separated list of domains. .duckdns.org part not need
updateIntervalMinutes=20 # The update interval

currentIp=`curl https://api.ipify.org 2>/dev/null`
api='https://www.duckdns.org/update?domains='$domain'&token='$duckDnsToken'&ip='$currentIp

if [ "$1" == "--install" ] 
then
	echo Adding the task to cron.
	(crontab -l ; echo "* */$updateIntervalMinutes * * * `pwd`/$0")| crontab -
	exit 0
fi

retCode=`curl $api 2>/dev/null`
if [ "$retCode" != "OK" ]
then
	logger $0 "Update ip fail!"
fi

