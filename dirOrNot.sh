
#!shell script which will take file name as argument and check whether the file
#!name is a dir or not and then proceed further only if it is a dir, else give usage message.


#!/bin/bash

if [[ $# -eq 0 ]]
then
	echo "pass the file name"
	exit
fi

for file in $@
do
	if [[ -d $file ]]
	then
		echo "directory: " $file
		directory=`find $file -maxdepth 1 -type d`
	
		for d in $directory
		do
			count=`find $d -maxdepth 1 -type f | wc -l`
			echo $d $count
		done | column -t
		echo	
	else
		echo "not a directory"
	fi
done


