
#!Prints given binary no. to decimal no.

echo "Enter binary no: "
read binary
echo "The decimal value is: ";
echo "$((2#$binary))";


#!Prints given binary no. to hexadecimal no.

echo "Enter binary no: "
read binary
echo "The Hexadecimal value is: ";
printf '%x\n' "$((2#$binary))";
