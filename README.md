# Packer-ubuntu-example
experimenting working with packer to automate VM creation (on mac or linux only )


##pre-requisite :

1.) virtual box manager Version 5.2.8 r121009 (Qt5.6.3) atleast

2.) packer software 1.4.0 atleast

3.) any text editor


##To run the example do as follow :

1.) clone the repository in your local system

2.) navigate inside the folder where your project has been downloaded.

3.) provide chmod 777 priviledge to http folder and all the scripts inside the script folder

4.)from your main folder run the following commands :
    -->packer validate ubuntu-test-vm.json ; if successful
    -->packer build -var 'reciever=<a-valid-gmail-id>' -var 'username=<gmail-sender-user-id>' -var 'password=<password-of-            sender-gmail-id>' -var 'sender=<a-valid-gmail-id>' -force ubuntu-test-vm.json
  
   example:
     packer build -var 'reciever=reciever@gmail.com' -var 'username=dummy' -var 'password=dummypassword' -var      
    'sender=dummy@gmail.com' -force ubuntu-test-vm.json

5.) wait for the VM to bootup 
  
##you will observer the following  :

1.) a packer_cache folder is created which will have your downloaded iso image of ubuntu [do not change anything here]

2.)if and only if your run is successful for VM creation you will see "output-ubuntu-build" folder created in your current  
   directory which will have the OVF of the VM created.
  
  
  
  
  
