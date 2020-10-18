#!/bin/bash -x
#Author: Prateek Patil
#Flip Coin Combination Problem

#Welcome message
echo "Welcome to Flip Coin Combination"

#Flipping coin to display heads or tails.
coinFlip=$((RANDOM%2))

if [ $coinFlip -eq 1 ]
then
	echo "Heads"
else
	echo "Tails"
fi
