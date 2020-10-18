#!/bin/bash -x
#Author: Prateek Patil
#Flip Coin Combination Problem

#Welcome message
echo "Welcome to Flip Coin Combination"

#Flipping coin to display heads or tails storing results in dictionary.
declare -A heads
declare -A tails

headCount=0
tailCount=0

for(( i=0; i<20; i++ ))
do
	coinFlip=$((RANDOM%2))

	if [ $coinFlip -eq 1 ]
	then
		echo "Heads"
		headCount=$(($headCount+1))
		heads[0]=$headCount
	else
		echo "Tails"
		tailCount=$(($tailCount+1))
		tails[0]=$tailCount
	fi
done
echo "Heads: ${heads[@]}"
echo "Tails: ${tails[@]}"

echo "Percentage of Heads: $(((${heads[@]}*100)/20))"
echo "Percentage of Tails: $(((${tails[@]}*100)/20))"
