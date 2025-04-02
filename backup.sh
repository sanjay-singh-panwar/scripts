#!/bin/bash

<<info 
this shell script will take prtiodic 
backups
info

src=$1
dest=$2

timestamp=$(date '+%Y-%m-%d-%H-%M')


zip -r "$dest/beckup-$timestamp.zip" $src >/dev/null 

echo "=====Backup Done======="

