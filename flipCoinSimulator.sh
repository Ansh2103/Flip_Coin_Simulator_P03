#!/bin/bash -x
echo xxxxxxxxxxWELCOMExxxxTOxxxxFLIPxxxxCOINxxxxSIMULATORxxxxxxxxxxx

#Constants declared.
CHECK=1
#Varriable declared.
heads=0
tails=0

read -p "Enter the number you want to flip the coin:" range
#declaring a dictionary to store the count
declare -A singlet
#logic for the operation.
function flip() {
	random=$((RANDOM%2))
	echo $random
}
for (( count=0; count<range; count++))
do
	result="$(flip)"
	if (( $result == $CHECK  ))
	then
 		echo "HEAD"
		singlet[$count]=H
		((heads++))
	else
		echo "TAIL"
		singlet[$count]=T
		((tails++))
	fi
done
echo "Heads count= $heads"
echo "Tails count= $tails"
echo ${singlet[@]}

#calculating the percentage of heads and tails
headPercent=$(( ($heads/$range) * 100 ))
	echo "pecentage of heads is: $headPercent"
tailPercent=$(( (tails/range)*100 ))
	echo "pecentage of tails is: $tailPercent"
