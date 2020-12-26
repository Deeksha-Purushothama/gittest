#!/bin/bash -x

#title
echo -e "\n------------------------------------------"
echo "----------------GAMBLING------------------"
echo -e "------------------------------------------\n"

#Command from the user to start the game
echo "To Start Playing Enter 1"
read x

#To re-check whether have given correct input to start
while [ $x -ne 1 ]
do
	read -p "Enter a valid input (1)" x
done

echo -e "LET'S START THE GAME\n"

#Assigning intial points to each player
Player1=100
Player2=100

echo "Welcome Bonus"
echo "-------------"
echo "Player1=$Player1"
echo -e "Player2=$Player2\n"

#loop to iterate 
while [ True ]
do
	#if loop to give turn
	if [[ $((RANDOM%2+1)) -eq 2 ]]
	then
		#if loop to check whether player1 win's or lose
		if [[ $((RANDOM%2+1)) ]]
		then
			echo -e  "\nPlayer1 wins"
			((Player1=Player1+2))
		else
			echo -e "\nPlayer1 lose"
			((Player1=Player1-2))
		fi
	else
		#if loop to check whether player2 win's or loose
		if [[ $((RANDOM%2+1)) -eq 1 ]]
		then
  			echo -e "\nPlayer1 wins"
   			((Player2=Player2+2))
		else
   			echo -e "\nPlayer2 lose"
    		((Player2=Player2-2))
		fi
	fi
	#display points table
	echo -e "\nPOINTS TABLE"
	echo "------------"
	echo "Player1=$Player1"
	echo "Player2=$Player2"

	#if condition to check who won the game 
	if [ $Player1 -eq 200 ]
	then
		echo -e  "\nPlayer1 WON THE GAME"
		echo "Player2 LOSE THE GAME"
		exit
	elif [ $Player2 -eq 200 ]
	then
		echo -e "\nPlayer2 WON THE GAME"
		echo "Player1 LOSE THE GAME"
		exit
	elif [ $Player1 -eq 0 ]
	then
		echo -e "\nPlayer1 LOSE THE GAME"
		echo "Player2 WON THE GAME"
		exit
	elif [ $Player2 -eq 0 ]
	then
		echo -e "\nPlayer2 LOSE THE GAME"
		echo "Player1 WON THE GAME"
		exit
	fi
done

