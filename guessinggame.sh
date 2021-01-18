#!/usr/bin/env bash
# File: guessinggame.sh
# This program continuously asks the user to guess the number of files 
# in the current directory, until they guess the correct number. The user 
# will be informed if their guess is too high or too low. Once the user 
# guesses the correctly they are congratulated

num_files=$(ls | wc -l)
correct=0

function check-guess {
    if [[ $1 -lt num_files ]]
    then
        echo "Too low! Try again."
    elif [[ $1 -gt num_files ]]
    then
        echo "Too high! Try again."
    else
        correct=1
        echo "Congratulations! Your guess was correct."
    fi
}

while [[ $correct -eq 0 ]]
do
    echo "How many files are in the current directory?"
    read guess
    check-guess $guess
done