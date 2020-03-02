#!/bin/bash

guess=-1
declare -i num=0

echo -e "\t************* WELCOME TO THE AGE GUESSING GAME ************\n"
echo -e "You are to try guess the age between 20 & 70\n"

Age=$(shuf -i20-70 -n1 ) # random number generator between 20&70

while (( guess != Age )); do # While loop, while guess is not equal to age iterate loop
	num=num+1                  # Guess counter
	read -p "Enter guess $num: " guess # assign user input to (guess) variable

  if (( guess < Age)); then  # if age is greater than guess, print this
		echo "Your guess is too low, try again!"

	elif (( guess > Age )); then # if age is less than guess, print this
		echo "Your guess is too high, try again!"

	fi
done
echo -e "Congratulations, you guessed correctly in $num guesses.\n" #let the user know how many guesses it took to get it right!
