#!/bin/bash -x

#title
echo -e "\n-----SHELL SCRIPT STORE A SET OF FILES IN A DIRECTORY AND MOVING THOSE FILES TO-----"
echo "THEIR RESPECTIVE FOLDERS BY CREATING THE DIRECTORIES WITH THE SAME NAME AS THE FILES"
echo "-----------------------------------------------------------------------------------"

echo -e "\nCreating a directory called 'dir'......"
mkdir dir
echo -e "\nListing the contents of present working directory"
ls
echo -e "\nChanging directory to 'dir'............" 
cd dir
echo -e "\nCreating files in 'dir'....."
touch abc.txt
touch def.txt
touch ghi.txt
touch jkl.txt
touch mno.txt
echo -e "\nListing out files created in 'dir' directory"
ls
echo -e "\nChanging directory to parent dircetory......"
cd ..

echo -e "\nCreating Directories same as file name......"
mkdir abc
mkdir def
mkdir ghi
mkdir jkl
mkdir mno
echo -e "\nListing out Contents of Parent Directories......"
ls

echo -e "\nMoving files from 'dir' directory to their respective directories......"
mv dir/abc.txt abc/abc.txt
mv dir/def.txt def/def.txt
mv dir/ghi.txt ghi/ghi.txt
mv dir/jkl.txt jkl/jkl.txt
mv dir/mno.txt mno/mno.txt

echo -e "\nListing out abc directory"
ls abc
echo "Listing out def directory"
ls def
echo "Listing out ghi directory"
ls ghi
echo "Listing out jkl directory"
ls jkl
echo "Listing out mno directory"
ls mno



