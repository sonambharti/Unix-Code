#! /bin/bash

#! program to print either the given number is prime number or not.....

echo "Enter a number: ";
read num

for((i=2; i<=$num/2; i++))
do
  ans=$(( num%i ))
  if [ $ans -eq 0 ]
  then
    echo "$num is not a prime number."
    exit 0
  fi
done
echo "$num is a prime number."


#! Multi line comment.... <<com com

