#!/bin/bash
read -p "Enter first number: "  m
read -p "Enter second number: " n

<< mycom

if [ ${m} -gt ${n} ]
then
  echo "The value ${m} is greater than ${n}"
 
fi 

if [ ${n} -gt ${m} ]
then
  echo "The value ${n} is greatet than ${m}"
fi 

mycom


if [ ${m} -gt ${n} ]
then
  echo "The value ${m} is greater than ${n}"
else
  echo "The valu ${n} is greatet than ${m}"
fi 
