#Working on ubuntu

#We need a test account
sudo passwd ubuntu

#Test the login
su - ubuntu

exit

#Check the man pages
man pam_tally2

#Edit the file
sudo vim /etc/pam.d/common-auth

#Too many comments
sudo sed -i -E '/^(#|$)/d' /etc/pam.d/common-auth

#Edit the file
sudo vim /etc/pam.d/common-auth

auth required pam_tally2.so deny=3 unlock_time=300
#Edit auth requisite/required   pam_deny.so

#Save and exit

#Loggon with ubuntu more than 3 times (wrong password)
su - ubuntu