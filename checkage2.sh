#!/bin/bash

echo "Enter the filename"
read name
sed '1d' $name > temp

while read line
do
age=`echo "$line" | awk -F " " '{print $NF}'`

if [ $age -eq $1 ]
then
echo "$line" | awk -F " " '{print $1,$NF}'
fi

done < temp
