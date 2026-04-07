#!/bin/bash

echo "=================== Password changing stated =========================="

read -p "Enter user name : " user

a_user=$(cat /etc/passwd | grep "$user" | wc -l)

if [ $a_user != 0 ];
then
	sudo passwd $user
	echo "$uer password successfully changed"
else
	echo "$user not exist"
fi

echo "==================== Password Changing Entded =========================="
