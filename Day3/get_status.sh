#!/bin/bash
read -p "Enter your service name: " req_ser
echo "Your enterd service name is: ${req_ser}"
systemctl status ${req_ser}
