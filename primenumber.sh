#!/bin/bash -x

#title
echo -e "\n-----------------------------------------------"
echo "--------GET 5 RANDOM NUMBER AND CHECK----------"
echo "---WHETHER THE NUMBER IS PRIME NUMBER OR NOT---"
echo -e "-----------------------------------------------\n"

#for loop generate 5 random numbers
for (( i=1; i<=5; i++))
do
	x=$((RANDOM%100))
	echo "Random number is $x"
	count=0
	#for loo[ to check for prime number
	for (( j=2; j<$(($x/2)); j++))
	do
		if [ $(($x%$j)) -eq 0 ]
		then
			echo -e "$x is not a prime number\n"
			count=1
			break
		fi
	done
if [ $count -eq 0 ]
then
	echo -e "$x is a prime number\n"
fi
done


