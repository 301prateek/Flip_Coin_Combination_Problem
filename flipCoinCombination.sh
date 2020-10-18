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

#Triplet combination

declare -A HHH
declare -A HHT
declare -A HTH
declare -A THH
declare -A TTT
declare -A TTH
declare -A THT
declare -A HTT

hhh=0
hht=0
hth=0
thh=0
ttt=0
tth=0
tht=0
htt=0

for(( i=0; i<20; i++ ))
do
	coin1=$((RANDOM%2))
	coin2=$((RANDOM%2))
	coin3=$((RANDOM%2))
	if [ $coin1 -eq 1 -a $coin2 -eq 1 -a $coin3 -eq 1 ]
	then
		hhh=$(($hhh + 1))
		HHH[0]=$hhh
	elif [ $coin1 -eq 1 -a $coin2 -eq 1 -a $coin3 -eq 0 ]
	then
		hht=$(($hht + 1))
		HHT[0]=$hht
	elif [ $coin1 -eq 1 -a $coin2 -eq 0 -a $coin3 -eq 1 ]
	then
		hth=$(($hth + 1))
		HTH[0]=$hth
	elif [ $coin1 -eq 0 -a $coin2 -eq 1 -a $coin3 -eq 1 ]
	then
		thh=$(($thh + 1))
		THH[0]=$thh
	elif [ $coin1 -eq 0 -a $coin2 -eq 0 -a $coin3 -eq 0 ]
	then
		ttt=$(($ttt + 1))
		TTT[0]=$ttt
	elif [ $coin1 -eq 0 -a $coin2 -eq 0 -a $coin3 -eq 1 ]
	then
		tth=$(($tth + 1))
		TTH[0]=$tth
	elif [ $coin1 -eq 0 -a $coin2 -eq 1 -a $coin3 -eq 0 ]
	then
		tht=$(($tht + 1))
		THT[0]=$tht
	elif [ $coin1 -eq 1 -a $coin2 -eq 0 -a $coin3 -eq 0 ]
	then
		htt=$(($htt + 1))
		HTT[0]=$htt
	fi
done

echo "HHH percentage: $(((${HHH[@]}*100)/20))"
echo "HHT percentage: $(((${HHT[@]}*100)/20))"
echo "HTH percentage: $(((${HTH[@]}*100)/20))"
echo "THH percentage: $(((${THH[@]}*100)/20))"
echo "TTT percentage: $(((${TTT[@]}*100)/20))"
echo "TTH percentage: $(((${TTH[@]}*100)/20))"
echo "THT percentage: $(((${THT[@]}*100)/20))"
echo "HTT percentege: $(((${HTT[@]}*100)/20))"

#Displaying Singlet
echo "H: ${heads[@]}"
echo "T: ${tails[@]}"
#Displaying Doublet Combinations
echo "HH: ${HH[@]}"
echo "HT: ${HT[@]}"
echo "TH: ${TH[@]}"
echo "TT: ${TT[@]}"
#Displaying Triplet Combinations
echo "HHH: ${HHH[@]}"
echo "HHT: ${HHT[@]}"
echo "HTH: ${HTH[@]}"
echo "THH: ${THH[@]}"
echo "TTT: ${TTT[@]}"
echo "TTH: ${TTH[@]}"
echo "THT: ${THT[@]}"
echo "HTT: ${HTT[@]}"


