date | grep -q 'UTC'

returnCode=$?; 
if [[ $returnCode == 0 ]];then 
	echo "TEST-PASS===>The timezone of VM is UTC"
	exit $returnCode
else
	echo "TEST-FAIL===>The timezone of VM is  NOT UTC"
    sudo sendemail -f $SENDER_EMAIL_ID -t $RECIEVER_EMAIL_ID -u "BUILD FAILURE" -m "The timezone of VM was NOT UTC:BUILD NOT FIT " -s smtp.gmail.com:587 -xu $USERNAME -xp $PASSWORD -o tls=auto
	exit $returnCode
fi