#! /bin/bash

#! shell script to print all files starting with name “exam****.**” and can have any extension.

lcount=0

for fname in `find -type f -iname "exam*.*"`
do
	echo "$fname"
	(( clount++ ))
done

if (( $lcount == 0 ))
then
echo " No file found with name starting with exam"
fi

