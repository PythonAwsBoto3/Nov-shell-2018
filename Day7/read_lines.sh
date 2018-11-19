#!/bin/bash

while read line
do
  echo "Checking for ${line}"
  pkg_info=`rpm -qa | grep ${line}`
  if [ -z "${pkg_info}" ]
  then
    echo "Installing ${line}..."
    yum install ${line} -y
  else
    echo "Alredy ${line} pkg is installed"
  fi 
  sleep 2
done<list_of_pkgs.txt
