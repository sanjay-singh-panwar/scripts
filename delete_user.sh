#!/bin/bash

echo "=========================== User Deletion started ====================================="

read -p "Enter username that you want to delete: " user

a_user=$(cat /etc/passwd | grep "$user" | wc -l)

if [ $a_user != 0 ];
then
	sudo userdel "$user"
	echo "$user successfully deleted"
else
	echo "Sorry , $user not exists"
fi
	
echo "========================= User Deletion Ended ========================================"


