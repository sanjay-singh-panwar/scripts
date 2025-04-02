#!/bin/bash

#user defined variable
hero="ram"
villian="abcd"


# user inpur
echo " hero is  $hero"
echo " villian is  $villian"

echo "current loggedin user is  $USER"

read -p "what is your full name ? " username

echo "your full name is $username"


# Arguments
 echo " your friends are $1, $2, $3"

 echo  " total friends: $#"

 echo " all friends are: $@" 



