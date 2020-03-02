#!/bin/bash

echo "Welcome to the Age guessing Game"
echo "You are to guess the age between 20 and 70"

age=$(($RANDOM % 70 + 20)) #define random age function
echo $age


function test-guess(){
read -p "What is your guess: " user_guess #Read user input and compare to the randomly generated number
if [ "$user_guess" -eq "$age" ];

then
  echo "Congratulations your guess is correct" # if answer is correct
    exit 0

elif [ "$user_guess" -lt "$age" ]; #tell the user if answer is too low
then
  echo "Your guess is too low, guess again"

else [ "$user_guess" -gt "$age" ]; #tell the user if answer is too high
  echo "Your guess is too high, guess again"

test-guess

fi
}
test-guess
