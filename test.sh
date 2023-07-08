#!/bin/bash
echo "enter the filename"
read name
num=1
while read line
do
echo "$num) $line"
num=`expr $num + 1`
done < $name
