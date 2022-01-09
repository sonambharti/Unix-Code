
#! print all file name in ascending order whose size is greater than 1000 bytes

files=`find *.* -size +1000b | sort -rn`
count=0
for line in ${files[@]}
do
	((count++))
	echo $line
done
echo ---------------
echo Count: $count
