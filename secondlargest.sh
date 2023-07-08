#!/bin/bash

for i in $@
do
secondGreatest=$(printf '%s\n' "${array[@]}" | sort -n | tail -2 | head -1)
echo "$secondGreatest"
done
