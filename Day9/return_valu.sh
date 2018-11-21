#!/bin/bash
function add
{
  result=$((a+b))
  echo "${result}"
}

a=5
b=6
a_b_re=`add`

echo "The result: ${a_b_re}"
