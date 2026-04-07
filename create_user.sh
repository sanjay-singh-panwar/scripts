#!/bin/bash

echo "=============== User creation Started ===================="

read -p "Enter user name that you want to create : " user
read -s -p "Enter password for user : " password

a_user=$(cat /etc/passwd | grep $user | wc -l)


if [ $a_user == 0 ];
then
	sudo useradd "$user"
	echo -e "$password\n$password" | sudo passwd "$user"
	echo "$user successfully created "
else
	echo "$user already exists"
fi



echo "================= User Creation Ended ====================="

