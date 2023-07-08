#!/bin/bash

echo "Below is the  Calculator Menu "
#echo -e "1) Addition\n2) Substraction\n3) Multiplication\n4) Division\n5) Exit\n"

PS3="Enter the option from the above: "
select choice in Add Sub Mul Div Exit
do
#echo "Select any option from Above menu"
#read opt

case $choice in
        'Add') echo "enter numbers to add"
                read numbers
                sum=0
                for i in $numbers
                 do
                         sum=`expr $sum + $i`
                 done
                 echo "sum of $numbers is $sum"
                 ;;
         'Sub') echo "enter numbers to subsratct"
                 echo "enter 1st number"
                 read num1
                 echo "enter 2nd number"
                 read num2

                 if [ $num1 -gt $num2 ];then

                         sub=`expr $num1 - $num2`
                 else
                         sub=`expr $num2 - $num1`
                 fi
                 echo "sub of $num1 and $num2 is $sub"
                 ;;
          'Mul') echo "enter numbers to multiple "
                 read numbers
                 mul=1
                 for i in $numbers
                 do
                  mul=`expr $mul \* $i`
                 done
                echo "multiplication of $numbers is $mul"
                ;;
        'Div') echo "enter numbers to Division"
                 echo "enter 1st number"
                 read num1
                 echo "enter 2nd number"
                 read num2

                 if [ $num1 -gt $num2 ];then

                         sub=`expr $num1 / $num2`
                 else
                         sub=`expr $num2 / $num1`
                 fi
                 echo "Division  of $num1 and $num2 is $sub"
                 ;;

         'Exit') if [ $choice == "Exit" ]
then
                 echo "You select a option to exit"
   break
fi
 ;;
 esac
done
