#!/bin/bash
read -p "Enter any number between 1-5: " num

case ${num} in
1) echo "You entered: one" 
   echo "This is first case" 
   ;;
2) echo "You entered: two" ;;
3) echo "You entered: three" ;;
4) echo "You entered: four" ;;
5) echo "You entered: five" ;;
*) echo "You entered out of range number" ;;
esac
