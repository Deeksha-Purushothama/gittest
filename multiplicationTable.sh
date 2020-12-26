#!/bin/bash -x

#title
echo "------------------------------------------------"
echo "-------------MULTIPLICATION TABLE---------------"
echo "------------------------------------------------"

echo -e "\n"
read -p "Enter a number to get its multiplication table:" n
echo -e "\nMultiplication table of $n"

echo "-------------------------"
for (( i=1; i<=10; i++)) 
do
	echo -e "|\t$n * $i = $(($n*$i))\t|"
	sleep 1
done
echo "-------------------------"
