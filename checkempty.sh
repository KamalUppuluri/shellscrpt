#!/bin/bash

echo "Enter the Filename"
read name

if [ -s $name ];then
echo " $name is not an empty file"
else
echo "$name is a empty file"
fi
