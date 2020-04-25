#!/usr/bin/env bash
# File: guessinggame.sh

function checkfiles {
filecounter=$( ls -A| wc -l)
flag=1
echo "Hello User, guess the number of file in current directory "
while [[ $flag -eq 1 ]]
do
	read response
	
	if [[ $response =~ ^[0-9]+$ ]]
	then
		if [[ $response -gt $filecounter ]]
		then
			echo "You guessed too high. Guess again and go lower this time"
		elif [[ $response -eq $filecounter ]]
		then
			let flag=0
		else
			echo "You guessed too low. Guess again and go higher this time"
		fi
	else
		echo "Please enter a number"
	fi
done
echo "Congrats, That is the right answer"
}

checkfiles
echo "Script ended" 
