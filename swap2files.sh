#! /bin/bash

#! shell script that swaps the contents of two files.

if (( $# == 2 ))
then
	file1=$1

	file2=$2

	if [ ! -e $file1 ]
	then
		echo "ERROR: $file1 does not exist"
		exit 1
	fi

	if [ ! -e $file2 ]
	then
		echo "ERROR: $file2 does not exist"
		exit 1
	fi

	if [ ! -w $file1 ]
	then
		echo "ERROR: $file1 permissions fails"
		exit 1
	fi

	if [ ! -w $file2 ]
	then
		echo "ERROR: $file2 permissions fails"
		exit 1
	fi

	TMPFILE=$(mktemp)
	mv "$file1" $TMPFILE
	mv "$file2" "$file1"
	mv $TMPFILE "$file2"

	echo "Files Swapped Successfully"
else
	echo "Please enter 2 files only" 
fi

