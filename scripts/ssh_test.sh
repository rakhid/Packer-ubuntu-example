which ssh | grep -q '/usr/bin/ssh'
returnCode=$?; 
if [[ $returnCode == 0 ]];then 
	echo "TEST-PASS===>SSH is properly configured on this VM"
	exit $returnCode
else
    echo "TEST-FAIL===>SSH is not configured properly on this VM"
	sudo sendemail -f $SENDER_EMAIL_ID -t $RECIEVER_EMAIL_ID -u "BUILD FAILURE" -m "SSH was not properly configured on the VM :BUILD NOT FIT " -s smtp.gmail.com:587 -xu $USERNAME -xp $PASSWORD -o tls=auto
	exit $returnCode
fi