#!/bin/bash
echo "enter the file name"
read filename
count=`wc -l $filename | awk -F " " '{print$1}'`
while read line
do
	revc=`head -$count $filename | tail -1`
	echo "$revc"
	count=`expr $count - 1`
done <$filename
