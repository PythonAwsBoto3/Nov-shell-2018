#!/bin/bash
read -p "Enter your service  name: " req_ser
systemctl stop ${req_ser}
