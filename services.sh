#!/bin/bash
services="sshd jenkins docker"
for i in $services
do
	ps -C $i
	if [ $? -ne 0 ]
	then
		echo "$i" >> services.txt
	fi
done
if [ -s services.txt ]
then
	cat services.txt | mail -s "services are not running" shivaranjiniumesh@gmail.com
fi
