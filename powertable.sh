#!/bin/bash -x

#title
echo -e "\n------------------------------------------------------------------"
echo "POWER TABLE OF A NUMBER ENTERED BY THE USER TILL VALUE REACHES 350"
echo "------------------------------------------------------------------"

#input from the user
read -p "Enter the number:" p

#for loop to iterate
for (( i=1; i<=20; i++))
do
	ans=$(($p**$i))
	if [ $ans -le 351 ]
	then
		echo $p^$i = $ans
	else
		exit
	fi
done
