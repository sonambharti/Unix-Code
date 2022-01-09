#!/bin/bash

#!script to print only number of executable files, and number of text files in each
#!sub-dir of the argument directory specified.

for dir in $(find $1  -maxdepth 1 -type d)
do

	echo Directory: $dir 
	exe=0
	text=0
	for file in $(find $dir -maxdepth 1 -type f)
	do
		if [[ -x $file ]]
		then
			((exe++))
		elif [[ -f $file ]]
		then
			((text++))
		fi
	done
	echo Executable: $exe
	echo Text files: $text
	echo ----------------------------
	
done
		

