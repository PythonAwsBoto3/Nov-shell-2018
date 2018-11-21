#!/bin/bash

function menu
{
 echo "Select option from below:"
 echo -e "\t1 --> Internet connectivity\n\t2 --> OS Name\n\t3 --> OS Release\n\t4 --> Ram usage\n\t5 --> Disk usage"
 #read -p "Now enter your option: " user_option
}

function getting_user_info
{
  case ${user_option} in
  1) echo "We are checking internet connectivity. Please wait..."
      re_cnt=`ping -c 2 www.google.com | awk 'NR==6 { print $4 }'`
      if [ ${re_cnt} -eq 2 ]
      then
        echo "You are having internet connectiviry"
      else
        echo "You dont have internet connectivity"
      fi
     ;;
  2) echo "Finding OS Name. Please wait...."
     echo "OS_NAME: `uname`"
     ;;
  3) echo "Finding OS Release. Please wait..."
     sleep 2
     ;;
  4) echo "Getting ram usage...."
     sleep 2
     ;;
  5) echo "Getting disk usae...."
     sleep 2
     ;;
  *) echo "Please select only 1-5 options as:"  
     menu
     echo "Please re-run to get your info"
     ;;
esac

}
function read_user_option
{
  read -p "Now enter your option: " user_option
}
function main
{
 clear
 menu
 read_user_option
 getting_user_info



}

main
