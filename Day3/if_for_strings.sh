#!/bin/bash
read -p "Enter first string: " str1
read -p "Enter second string: " str2

if [ "${str1}" == "${str2}" ]
then
   echo "Yes they are equal"
else
   echo "They are not equal"
fi 
