#!/bin/bash -x

display_board()
{
echo -e "\t${board[0]}|\t${board[1]}|\t${board[2]}"
echo "---------------------------"
echo -e "\t${board[3]}|\t${board[4]}|\t${board[5]}"
echo "---------------------------"
echo -e "\t${board[6]}|\t${board[7]}|\t${board[8]}"
}


display_board 
