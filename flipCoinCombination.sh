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

#Doublet Combination

declare -A HH
declare -A HT
declare -A TH
declare -A TT

hh=0
ht=0
th=0
tt=0

for(( i=0; i<20; i++ ))
do
	coin1=$((RANDOM%2))
	coin2=$((RANDOM%2))
	if [ $coin1 -eq 1 -a $coin2 -eq 1 ]
	then
		hh=$(($hh + 1))
		HH[0]=$hh
	elif [ $coin1 -eq 1 -a $coin2 -eq 0 ]
	then
		ht=$(($ht + 1))
		HT[0]=$ht
	elif [ $coin1 -eq 0 -a $coin2 -eq 1 ]
	then
		th=$(($th + 1))
		TH[0]=$th
	elif [ $coin1 -eq 0 -a $coin2 -eq 0 ]
	then
		tt=$(($tt + 1))
		TT[0]=$tt
	fi
done

echo "HH percentage: $(((${HH[@]}*100)/20))"
echo "HT percentage: $(((${HT[@]}*100)/20))"
echo "TH percentage: $(((${TH[@]}*100)/20))"
echo "TT percentage: $(((${TT[@]}*100)/20))"
