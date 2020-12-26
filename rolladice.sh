#!/bin/bash -x

#for loop to roll dice 50 times
for (( i=1; i<51; i++))
do
	#random variable
    dice=$((RANDOM%6+1))

	#case to keep track of count of random numbers 
	case $dice in
	1) ((one++));;
	2) ((two++));;
	3) ((three++));;
	4) ((four++));;
	5) ((five++));;
	6) ((six++));;
	*) break
	esac
done

#display number of times 1-6 has appeared
echo "1 appeared $one times"
echo "2 appeared $two times"
echo "3 appeared $three times"
echo "4 appeared $four times"
echo "5 appeared $five times"
echo -e "6 appeared $six times\n"

#for loop to print which number has appeared maximum times
if [[ $one -gt $two && $one -gt $three && $one -gt $four && $one -gt $five && $one -gt $six ]]
then
	echo "1 has appeared maximum number of times"
elif [[ $two -gt $one && $two -gt $three && $two -gt $four && $two -gt $five && $two -gt $six ]]
then
	echo "2 has appeared maximum number of times"
elif [[ $three -gt $one && $three -gt $two && $three -gt $four && $three -gt $five && $three -gt $six ]]
then
	echo "3 has appeared maximum number of  times"
elif [[ $four -gt $one && $one -gt $two && $four -gt $three && $four -gt $five && $four -gt $six ]]
then
	echo "4 has appeared maximum number of times"
elif [[ $five -gt $one && $five -gt $two && $five -gt $three && $five -gt $four && $five -gt $six ]]
then
	echo "5 has appeared maximum number of times"
elif [[ $six -gt $one && $six -gt $two && $six -gt $three && $six -gt $four && $six -gt $five ]]
then
	echo "6 has appeared maximum number of times"
fi

