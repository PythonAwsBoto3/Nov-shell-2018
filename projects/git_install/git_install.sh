#!/bin/bash

function find_install_git_ver
{ 
  validating_soft_location
  file_name=`ls ${soft_loc}`
  file_name_ver=`echo ${file_name} | cut -d - -f 2`
  git_ver=`echo ${file_name_ver%.*}`
  git_ver=`echo ${git_ver%.*}`
  
}
function validating_soft_location
{
  no_of_files=`ls ${soft_loc} | wc -l`
  if [ ${no_of_files} -ne 1 ]
  then
    echo "Please update this path: ${soft_loc} with only one git-xxxx.tat.gz"
    echo "And then try again"
    exit
  else
    echo "ok we will procees"
  fi
}

function checking_ex_git
{
 git_y_n=`git --version 2>&1 | grep "command not found" | wc -l`
 if [ ${git_y_n} -ne 0 ]
 then
   echo "You dont have any installed git on this host"
   find_install_git_ver
   echo "So, please wait we are installing git: ${git_ver}"
   
 else
  ex_git_ver=`git --version | awk '{print $3}'` 
  echo "You are having the git version of: ${ex_git_ver}"
 fi

}


function main
{
 soft_loc="/home/ec2-user/Nov_Shell_Scripting/Nov-shell-2018/projects/git_install/git_sot"
 checking_ex_git


}


main
