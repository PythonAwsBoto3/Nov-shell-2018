#!/bin/bash

<< nari
if [ 3 -gt 1 ]
then 
  echo "Hi how are you "
fi 
nari

i=1
while [ $i -le 14 ]
do
  echo "Hi how are you $i"
  i=$((i+1))
done 
