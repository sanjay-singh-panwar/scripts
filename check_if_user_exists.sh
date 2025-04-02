#!/bin/bash

<<help 
check   user already 
exists or not 
help

read -p "Enter username that you want to check :" username

count=$(cat /etc/passwd | grep "$username" | wc | awk '{print $1}')

if [ $count -eq 0 ];
then
	echo "$username is not exists."
else
	echo "$username is already exists"
fi
