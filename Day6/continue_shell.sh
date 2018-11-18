#!/bin/bash
i=0
while [ $i -le 50 ]
do
  i=$((i+1))
  if [   $i -ne 2  ]
  then
    echo "before continue"
    continue
    echo "after continue"
  fi  
  echo $i
  sleep 1
done
