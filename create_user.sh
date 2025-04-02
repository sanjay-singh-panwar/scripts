#!/bin/bash 

echo "================= User Creation Started =================== "
 
echo  " Enter the username:$1 "
echo  "Enter the password:$2 "
sudo useradd -m $1

echo -e "$2\n$2" | sudo passwd $1


echo " =================  User creationn Ended ====================  "

sudo userdel -f  $1

sudo rm -r /home/$1

echo "================== deletion of user complete ==================== "

if [ $(cat /etc/passwd | grep "$1"| wc | awk '{print $1}') -eq 0 ];
then
	echo "as wc is 0 user has deleted"
else
	echo "user was not deleted "
fi


echo " ================== as wc is 0 user has deleted ================== "



