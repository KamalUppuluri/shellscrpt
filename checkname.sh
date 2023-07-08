#!/bin/bash

echo "Enter the name"
read name

if [ -f $name ];then
echo "$name is a file"
elif [ -d $name ];then
echo "$name is a dir"
elif [ -L $name ];then
echo "$name is a link"
else
echo " $name doesnot exits"
fi
