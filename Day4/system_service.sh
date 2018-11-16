#!/bin/bash
read -p "Enter your service name: " req_ser
read -p "Enter your action(start/stop/restart/status): " usr_action
usr_action=`echo "${usr_action}" | tr A-Z a-z`
check_action="startstoprestartstatus"
valid_invalid=`echo "${check_action}" | grep ${usr_action} | wc -l`
if [ ${valid_invalid} -eq 0 ]
then
  echo "You enterd invalid action"
  echo "Please select action as: start/stop/restart/status"
  exit 
  echo "Stopping"
else
 echo "Your action is valid so we are going to work on that"
fi

echo -e "Your service name is: ${req_ser} \nYour action is: ${usr_action}"
ser_status=`systemctl status httpd | grep -i active | awk '{ print $2 }'`

if [ "${usr_action}" == "start" ]
then
  if [ "${ser_status}" == "inactive" ]
  then
    echo "Please wait we are statring your service : ${req_ser}"
    systemctl start ${req_ser}
  else
    echo "Your service is already in running state"
  fi 
elif [ "${usr_action}" == "stop" ]
then
   if [ "${ser_status}" == "active" ]
   then
      echo "Pleaser wait we are stopping your service"
      systemctl stop ${req_ser}
   else
      echo "Your service: ${req_ser} is already in stoped state"
   fi 
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
















