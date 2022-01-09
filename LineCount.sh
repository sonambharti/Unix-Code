
#!/bin/bash

#! count line....

if [ $# -lt 1 ]
then
echo -e "\n INFO : Please pass a file name \n " #! prints when no file is given as input from cmd itself...
exit
fi

if [ $# -gt 1 ]
then
echo -e "\n INFO: Please pass only one file name \n "  #! prints when more than 1 file is given as input from cmd itself...
exit
fi

lcount=0
while read lines 
do 
if [[ $lines =~ ^$ ]] 
then
echo $line
((lcount++))
fi
done < $1
echo "$lcount"

#! https://tuxthink.blogspot.com/2012/01/couting-number-of-blank-lines-in-file.html
