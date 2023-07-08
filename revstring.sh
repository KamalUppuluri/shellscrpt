#!/bin/bash

echo "Enter the string to reverse"
read string
revstr=`echo $string | rev`
echo "$revstr"
