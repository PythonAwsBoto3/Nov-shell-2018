#!/bin/bash

function myinfo
{

 local  x=4

} 
x=100
echo "The value of x before calling fun: ${x}"
myinfo
echo "The value of x is after calling: ${x}"
