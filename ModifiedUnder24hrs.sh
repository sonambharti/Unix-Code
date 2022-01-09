#! /bin/bash

<<com
#!shell script file named exercise2.sh that makes a list of files in your home directory that were #!changed less than 24 hours ago, but leave out directories.
com

echo "Files changed just less than 24 hours ago "
for fname in `find -type f`
do

	find $fname -mtime -1
	
done


