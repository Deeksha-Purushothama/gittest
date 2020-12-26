#!/bin/bash -x

#title
echo -e "\n----------------------------------------------------------------------"
echo "---------SHELL SCRIPT TO PRINT 15 RANDOM NUMBERS AND DISPLAY----------" 
echo "LARGEST,SMALLEST,SECOND LARGEST AND SECOND SMALLEST NUMBERS AMONG THEM"
echo "----------------------------------------------------------------------"

echo "RANDOM NUMBERS ARE:"
#for loop to print 15 random numbers 
for (( i=1; i<=15; i++))
do
	r=$((RANDOM%100))
	array+=($r)
	echo $r
done
echo -e "\n"
#condition to print Largest number
max=${array[0]}
for i in ${array[@]}
do
	if [ $i -gt $max ]
	then
        max=$i
    fi
done
echo "Largest number is $max"

#condition to print Smallest Number
min=${array[0]}
for i in ${array[@]}
do
    if [ $i -lt $min ]
    then
        min=$i
    fi
done
echo "Smallest number is $min"

#condition to print second largest number
max1=${array[0]}
for i in ${array[@]}
do
    if [[ $i -gt $max1 && $i -lt $max ]]
    then
        max1=$i
    fi
done
echo "Second Largest Number is $max1"

#condition to check second smallest number
min1=${array[0]}
for i in ${array[@]}
do
    if [[ $i -lt $min1 && $i -gt $min ]]
    then
        min1=$i
    fi
done
echo "Second Largest is $min1"
