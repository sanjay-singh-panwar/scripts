#!/bin/bash

src=$1
dest=$2

timestamp=$(date "+%Y_%m_%d-%H:%M")

zip -r "$dest/backup-$timestamp" "$src"

