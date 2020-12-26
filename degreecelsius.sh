#!/bin/bash -x

#title
echo "---------------------------------------------------"
echo "CONVERSION FROM CELSIUS TO FAHRENHEIT AND VICEVERSA"
echo "---------------------------------------------------"

#Options title
echo -e "\nSelect any one option you wanted to convert"
echo "-------------------------------------------"
echo "1:Celsius to Fahrenheit"
echo -e "2:Fahrenheit to Celsius\n"

#inputing user_option
read -p "Enter your choice: " degree

#checking whether user_option is valid or not
while [[ $degree -ne 1 && $degree -ne 2 ]]
do
	read -p "Enter a valid choice: " degree
done

#checking user_option
if [ $degree -eq 1 ]
then
	echo "You opted to convert from Celsius to Fahrenheit"
	echo "(°C × 9/5) + 32 =°F"
	read -p "Enter temperature: " celsius
	fahrenheit=$(echo "scale=2;($celsius*(9/5))+32" | bc )
	echo $celsius °C=$fahrenheit °F
	exit
elif [ degree -eq 2 ]
then
	echo "You opted to convert from Fahrenheit to Celsius"
	echo "(°F − 32) × 5/9 =°C"
	red -p "Enter temperature: "fahrenheit
	celsius=$(echo "scale=2;($fahrenheit-32)*(9/5)" | bc )
	echo $fahrenheit °F = $celsius °C
	exit
fi

