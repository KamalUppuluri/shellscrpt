#!/bin/bash

echo " enter the filename"
read name

lines=`cat $name | wc -l`
echo "$lines"
while [ $lines -gt 0 ]
do
  head -$lines $name | tail -1  >> rev
lines=`expr $lines - 1`
done
cat rev
rm rev
