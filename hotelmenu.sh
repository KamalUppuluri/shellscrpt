#!/bin/bash

echo -e "Welcome to the Hotel\nBelow is the Menu"
   
    PS3="Enter your choice : " 
    select choice in Idly Dosa Poori Palav Hotbeverage Total Exit
do 
case $choice in
'Idly') echo "sub menu of Idly"
   
        echo " 1. Rava idly - 20rs "
        echo " 2. Tatte idly - 30rs "
        echo " 3. Plain idly - 40rs "
	
  read -p " enter the item number :"
     case 4 item in 
	 
	 1) total =$(( total +20))
	    ;;
	 2) total =$(( total + 30))
            ;;
         3) total =$(( total + 40))
	    ;;
     *) echo " invalid item number "
            ;;
esac 
            ;;
  'Dosa') echo " sub menu of dosa :"
		  
	   echo " 1. Masala dosa - 40rs"
	   echo " 2. plain dosa - 50rs"
           echo " 3. onion dosa - 60rs"
		
	read -p " enter the item number:"

         1) total =$(( total + 40))
		      ;;
         2) taotal =$(( total + 50))
		       ;;      
         3) total =$(( total + 60))
		       ;;
		*) echo " invalid item number "
   esac 

 'Palav') echo " sub menu of palav:"

          echo " 1. veg Palav - 30rs"
          echo " 2. Panner palav - 40rs"
          echo " 3. Pudina palav - 50rs "	
  read -p " enter the item number :" item 
    case $ item in 
          1) total= $((total +30))
            ;;
          2) total =$((total +40))
            ;;
          3) total =$((total +50))
            ;;
       *) echo : invalid item number :"
           ;;
esac 
          ;;
 'Poori') echo " Sub menu of Poori :"
 
          echo "1. Maida poori - 40rs"
          echo "2. Wheat poori - 50rs" 
          echo "3. Moondal poori - 60rs"
 read -p " enter the item number:" item
   case 4 item in 

       1) total =$((total + 30))
            ;;
       20 total =$((total + 40))
            ;;
       3) total =$((total + 50))
            ;;
	   *) echo " invalid item number :"	
	       ;;
esac 
             ;;
			 
'Hotbeverages') echo Coffee/tea - 15rs "

  read-p " enter the item number:" item 
   case $ item in
         
            1) total =$(( total + 15 ))
            ;;
  esac
            ;;
 'Total') echo " total : $total "
        ;;
 'Exit') echo " thank you for visiting !"
       exit 0
	   ;;
 *) echo " invalid choice please try again "
      ;;
esac
	  
done
