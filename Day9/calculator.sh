#!/bin/bash

function addition
{
 result=$((num1+num2))
 echo "The addition of ${num1} and ${num2} is: ${result}"
}

function sub
{
  sub_result=$((num1-num2))
  echo "The sub of ${num1} and ${num2} is : ${sub_result}"
}
read -p "Enter your first number: " num1
read -p "Enter your second number: " num2
addition
sub
