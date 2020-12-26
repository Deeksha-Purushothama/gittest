#!/bin/bash -x

echo "------------------------------------"
#title
echo "FINDING FACTORIAL OF A RANDOM NUMBER"
echo "------------------------------------"
#factorial of random number
x=$((RANDOM%10))
echo "Random number is $x"
#initializing factorial variable
f=1;

#for loop iterate random number
for (( i=1; i<=x; i++))
do
	f=$((f*i))
done
echo "Factorial of $x is $f"
echo "-------------------------------------"

echo -e "\n-------------------------------------"
echo "FACTORIAL OF USER INPUT NUMBER"
echo "-------------------------------------"
#factorial of user input number
read -p "Enter a number:" n
f=1;
#for loop to iterate number
for (( i=1; i<=n; ++i))
do
    f=$((f*i)) 
done
echo "Factorial of $n is $f"
echo "-------------------------------------"
