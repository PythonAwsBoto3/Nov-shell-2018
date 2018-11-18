#!/bin/bash
guess=45
i=1
while [ $i -le 4 ]
do
  
  read -p "Guess my number (This is your chance: $i): " user_guss
  if [ ${user_guss} -eq ${guess} ]
  then
    echo "Your guess is correct"
    echo "You guessed the number with chance no of $i"
    break
    echo "This wont execute"
    #exit 
  else
    echo "Your guess is wrong"
    if [ $i -eq 4 ]
    then
      echo "Sorry, you are chances are over"
    else
      rem=$((4-i))
      echo "So, your remaing chances are : $rem"
    fi

  fi 
  i=$((i+1))
done

echo "Thank you for using this game!!"
