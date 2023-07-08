#!/bin/bash

echo "Enter the name"
read name

case $name in

 'mon') echo "This is Monday"
       touch log1 log2
;;
  'tue') echo "This is Tuesday"
       mv log1 log_1
       mv log2 log_2
;;  
'wed') echo "This is Wednesday"
       cp log_1 log_1backup
       cp log_2 log_2backup
;;  
'thu') echo "This is Thursday"
       ls -lrt > log-list
;;  
'fri') echo "This is Friday"
       rm log_1 log_2 log_1backup log_2backup log-list
;;  
'sat'|'sun') echo "Today is holiday"
;;
  *) echo "Input is Invalid"
;;
esac
