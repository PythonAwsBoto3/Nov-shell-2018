#!/bin/bash
<< mycom
function myinfo
{
  echo "Hi"
  echo "bye"
}

mycom

myinfo()
{
  echo "HI"
  echo "bye"
}

myinfo
#echo "Hi"
#echo "bye"

x=3
y=4
echo $x
echo $y

myinfo
#echo "Hi"
#echo "bye"

echo "ok"
z=4
y=$((z+1))
echo $y

myinfo
#echo "Hi"
#echo "bye"
