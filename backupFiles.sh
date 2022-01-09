#!/bin/bash

#!a shell script that is able to backup all the C files to your current directory.

backup_files="/home / .c"

# Where to backup to.
dest="."

# Create archive filename.
day=$(date +%A)
hostname=$(hostname -s)
archive_file="Cbackup.tgz"

# Print start status message.
echo "Backing up $backup_files to $dest/$archive_file"
date
echo
