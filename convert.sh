#!/bin/bash -x

#title
echo " CONVERSION OF USER INPUT NUMBER TO WORDS"
read -p "Enter a two-digit number: " n1 n2

#print word for the first digit
case $n1 in
1) if [ $n2 -eq 0 ]
   then
		echo "Ten"
   elif [ $n2 -eq 1 ]
   then
		echo "Eleven"
   elif [ $n2 -eq 2 ]
   then
        echo "Twelve"
   elif [ $n2 -eq 3 ]
   then
        echo "Thirteen"
   elif [ $n2 -eq 4 ]
   then
        echo "Fourteen"
   elif [ $n2 -eq 5 ]
   then
        echo "Fifteen"
   elif [ $n2 -eq 6 ]
   then
        echo "Sixteen"
   elif [ $n2 -eq 7 ]
   then
        echo "Seventeen"
   elif [ $n2 -eq 8 ]
   then
        echo "Eighteen"
   elif [ $n2 -eq 9 ]
   then
        echo "Nineteen"
   fi
2) echo "Twenty";;
3) echo "Thirty";;
4) echo "Forty";;
5) echo "Fifty";;
6) echo "Sixty";;
7) echo "Seventy";;
8) echo "Eighty";;
9) echo "Ninety";;
esac

case $n2 in
1) echo "One";;
2) echo "Two";;
3) echo "Three";;
4) echo "Four";;
5) echo "Five";;
6) echo "Six";;
7) echo "Seven";;
8) echo "Eight";;
9) echo "Nine";;
esac
