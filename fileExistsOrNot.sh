#!/bin/bash -x

echo "--------------------------------------------------------"
#title
echo "SHELL SCRIPT TO CHECK WHETHER ENTERED FILE EXISTS OR NOT"
echo "---------------IF NOT CREATE A FILE---------------------"
echo -e "--------------------------------------------------------\n"

#input from user
read -p "Enter a file name to be searched:" file

#checking if file exists or not
if [[ -f "$file" ]]
then
    echo "$file exists."
else
	echo -e "No! The $file doesn't exists\nCreating now......\n"
	touch $file #if file doesn't exists to create a file
	echo "File created"
	ls 
fi

