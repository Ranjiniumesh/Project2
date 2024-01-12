#!/bin/bash
echo "content added"
#echo
#echo "enter the num to find the sum of first n numbers"
#read num
sum=0
while [ $num -gt 0 ]
do
	sum=`expr $num + $sum`
	num=`expr $num - 1`
done
echo " the sum of first n number is $sum"
