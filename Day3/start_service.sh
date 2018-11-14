#!/bin/bash
read -p "Enter your service name: " req_ser
systemctl start ${req_ser}
