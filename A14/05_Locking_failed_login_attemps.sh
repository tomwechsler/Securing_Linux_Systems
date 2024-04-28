#Working on ubuntu

#We need a test account
sudo passwd ubuntu

#Test the login
su - ubuntu

exit

#Install the package
sudo apt install libpam-modules

#Check the man pages
man pam_faillock.conf

#Edit the file
sudo vim /etc/pam.d/common-auth

#The First line (if you remove the silent, you will see the message)
auth    required pam_faillock.so preauth audit silent deny=3 unlock_time=300

#This lines bevor auth requisite pam_deny.so
auth    [default=die] pam_faillock.so authfail audit deny=3 unlock_time=300
auth    sufficient pam_faillock.so authsucc audit deny=3 unlock_time=300

#Save and exit

#Edit the file
sudo vim /etc/pam.d/common-account

#At the end
account    required pam_faillock.so

#Loggon with ubuntu more than 3 times (wrong password)
su - ubuntu