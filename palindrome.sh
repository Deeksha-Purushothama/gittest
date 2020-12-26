#!/bin/bash -x

#title
echo -e "\n-------------------------"
echo "-------PALINDROME--------"
echo -e "-------------------------\n"

#for loop to iterate from 1 to 100
for (( i=1; i<100; i++))
do
	temp=$i
	while [ $temp > 0 ]
	do
		rem=$(($temp%10))
		rev=$(((rev*10)+$rem))
		temp=$(($temp/10))
	done

	if [ $temp -eq $rev ]
	then
		echo "$i is a Palindrome"
	fi
done
