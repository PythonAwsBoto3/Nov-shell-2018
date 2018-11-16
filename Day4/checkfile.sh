#!/bin/bash
read -p "Enter your file/directory: "  f_d


if [ -e "${f_d}" ]
then
   if [ -f "${f_d}" ]
   then
      echo "You enterd file path"
   else
      echo "you enterd directory path"
   fi 
else
  echo "Your given file/directory is not exist"
fi
