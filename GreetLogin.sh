
#!prints greeting according to the login time....

echo "enter username:"
read username
echo "enter password:"
read password

if [$username = "sonam" -a $pass = "sonam"]
then
	h=$(date +"%H")
	if [ $h -gt 1 -a $h -le 12 ]
	then
	echo good morning
	elif [ $h -gt 12 -a $h -le 16 ]
	then 
	echo good afternoon
	elif [ $h -gt 16 -a $h -le 20 ]
	then
	echo good evening
	else
	echo good night
	fi
	
else
	echo "Either username or password is wrong"
fi

