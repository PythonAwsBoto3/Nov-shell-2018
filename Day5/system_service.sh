#!/bin/bash
if [ $# -ne 2 ]
then
  echo "Please run this script as: $0 <service_name>  <start/stop/restart/status> "
  exit 
fi 

req_ser=$1
usr_action=$2
usr_action=`echo "${usr_action}" | tr A-Z a-z`
if [ "${usr_action}" == "start" -o "${usr_action}" == "stop" -o "${usr_action}" == "restart"  -o "${usr_action}" == "status" ]
then
  echo "You enterd valid option"
  echo "We are going to work on that"
else
 echo "Your action is invalid"
 echo "Please enter start/stop/status/restart"
 exit 
fi

echo -e "Your service name is: ${req_ser} \nYour action is: ${usr_action}"
ser_status=`systemctl status httpd | grep -i active | awk '{ print $2 }'`

if [ "${usr_action}" == "start" -a  "${ser_status}" == "inactive" ]
then
    echo "Please wait we are statring your service : ${req_ser}"
    systemctl start ${req_ser}

elif [ "${usr_action}" == "stop" -a "${ser_status}" == "active" ]
then
      echo "Pleaser wait we are stopping your service"
      systemctl stop ${req_ser}
elif [  "${usr_action}" == "status" ]
then
   echo "The current status of your service: ${req_ser} is: ${ser_status}"

elif [ "${usr_action}" == "restart" ]
then
  echo "Please wait restarting your service ${req_ser}"
  systemctl restart ${req_ser}
else
  echo "You enterd invalid option"
fi 
















