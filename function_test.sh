#!/bin/bash

function user_create {
read -p "Enter a username :" username
sudo useradd $username
echo " new user added "
}

for (( i=1 ; i<=5 ; i++ ))
do 
       user_create
done 
