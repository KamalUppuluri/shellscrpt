#!/bin/bash
echo "Enter the number"
read number
     case $number in

         2|4|6|8) echo "$number is an even number"
             ;;
             1|3|5|7) echo "$number is an odd number"
        ;;
     *) echo "$number is invalid"
;;

esac
