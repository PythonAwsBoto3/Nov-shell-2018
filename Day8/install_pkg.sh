#!/bin/bash

rpm_yes_no=`rpm --version 2>&1 | grep "command not found" | wc -l`
yum_yes_no=`yum --version 2>&1 | grep "command not found" | wc -l`

if [ ${yum_yes_no} -ne 0 ]
then
   if [ ${rpm_yes_no} -ne 0 ]
   then
      echo "Yum and rpm are not configured so we could not install ur packages"
      exit
   else
      echo "we are using rpm to work out with your packages"
      #develop code with rpm to install pkg
   fi 
else
  echo "we are using yum to work out with your pkags"
  sleep 2
  while read line
  do
     echo "Checking for ${line}"
     pkg_info=`yum list installed | grep ${line}`
     if [ -z "${pkg_info}" ]
     then
       echo "Installing ${line}..."
       yum install ${line} -y
     else
       echo "Alredy ${line} pkg is installed"
     fi
     sleep 2
  done<list_of_pkgs.txt
fi
