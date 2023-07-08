#!/bin/bash

echo "Enter the Filename"
read name

num=1
while read line
do
status=`expr $num % 2`
if [ $status -eq 0 ]
then
echo "$num. $line" >> log_even
else
echo "$num. $line" >> log_odd
fi
num=`expr $num + 1`
done < $name
cat log_even
cat log_odd
rm log_even
rm log_odd
