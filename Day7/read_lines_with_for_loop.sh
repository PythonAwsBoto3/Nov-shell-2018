#!/bin/bash

for each in `cat list_of_pkgs.txt`
do
  echo "${each}"
  yum install "${each}"
  sleep 1
done
