#!/bin/bash
# random number guessing game

# $RANDOM generates a random variable
rand=$RANDOM
secret=${rand:0:1} # select the first digit from the generated random number.

function game{
         read -p "Guess a random one-digit number! " guess
         while [[ $guess != $secret ]]; do
                read -p "Nope, try again! " guess
         done
         echo "Good job, $secret it is! You're great at guessing!"
}

function generate{
         echo "A random number is: $rand"
         echo -e "Hint: type \033[1m$0 game\033[0m for a fun diversion!"
}

if [[ $1 =~ game|Game|GAME ]]; then
        game
else
        generate
fi
