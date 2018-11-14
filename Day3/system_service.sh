#!/bin/bash
read -p "Enter your service name: " req_ser
read -p "Enter your action(start/stop/restart/status): " usr_action

echo -e "Your service name is: ${req_ser} \nYour action is: ${usr_action}"
ser_status=`systemctl status httpd | grep -i active | awk '{ print $2 }'

#systemctl ${usr_action} ${req_ser}
