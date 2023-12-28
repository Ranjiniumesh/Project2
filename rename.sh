#!/bin/bash
txt=`ls *.txt`
echo "$txt"
for i in $txt
do
	name=`echo "$i" |awk -F "." '{print $0}' | sed s/.txt//g`
	echo "$name"
	mv $i $name.html
done

