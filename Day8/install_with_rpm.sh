#!/bin/bash
cur_dir=`pwd`
#echo "THe current dir: ${cur_dir}"
if [ -d "rpm_pkgs" ]
then
  echo "we are taking rpms from rpm_pkgs"
else
  echo "rpm_pkgs dir is not there, so please create rpm_pkgs and copy ur rpms into this"
  exit 
fi 

for each_rpm in `ls rpm_pkgs`
do
 pkg_name=`echo ${each_rpm} | awk -F - '{ print $1 }'`
 pkg_is_y_n=`rpm -qa | grep ${pkg_name}|wc -l`
 if [ ${pkg_is_y_n} -eq 0 ]
 then
   pkg_path=${cur_dir}/rpm_pkgs/${each_rpm}
   echo "The complete path of pkg is: ${pkg_path}"
   echo "Installing ${each_rpm}...."
   sleep 2
   rpm -ivh ${pkg_path} --nodeps
 else
  echo 'This ${pkg_name} is alredy installed'
 fi
 
done

