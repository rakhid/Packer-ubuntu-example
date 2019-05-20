whoami | grep -q 'ubuntu'
returnCode1=$?; 
if [[ $returnCode1 == 0 ]];then 
    id   | grep -q 'sudo'
    returnCode2=$?;
    if [[ $returnCode2 == 0 ]];then 
		echo "TEST-PASS===>A user with admin privileges named ubuntu exists on the VM"
		exit $returnCode2
	else
	    echo "TEST-FAIL===>Admin privileges does not exist for the user found"
		sudo sendemail -f $SENDER_EMAIL_ID -t $RECIEVER_EMAIL_ID -u "BUILD FAILURE" -m "Admin privileges does not exist for the user found on the VM :BUILD NOT FIT " -s smtp.gmail.com:587 -xu $USERNAME -xp $PASSWORD -o tls=auto
		exit $returnCode2
	fi  	
else
	echo "TEST_FAIL===>A user with admin privileges does not exist"
	sudo sendemail -f $SENDER_EMAIL_ID -t $RECIEVER_EMAIL_ID -u "BUILD FAILURE" -m "A user with admin privileges does not exist in the VM :BUILD NOT FIT " -s smtp.gmail.com:587 -xu $USERNAME -xp $PASSWORD -o tls=auto
	exit $returnCode1
fi