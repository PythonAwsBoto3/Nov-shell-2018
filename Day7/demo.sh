#!/bin/bash
<< mycom
for each in $*
do
  echo "Now we are installing ${each}......."
  yum install ${each} -y
done
mycom


for each in 1 2 3 4 5 hi how ae you
do
  echo "Hi"
  #echo ${each}
done
