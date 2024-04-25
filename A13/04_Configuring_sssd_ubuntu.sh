#Working on ubuntu

#Install the tools
sudo apt install -y sssd-ldap

#Update the pam module
sudo pam-auth-update --enable mkhomedir

#Copy a sssd config template
sudo cp /usr/lib/x86_64/-linux-gnu/sssd/conf/sssd.conf /etc/sssd/sssd.conf

#Change the permissions
sudo chown root. /etc/sssd/sssd.conf

sudo chmod 0600 /etc/sssd/sssd.conf

sudo systemctl start sssd

#Edit the config file
sudo vim /etc/sssd/sssd.conf

#Copy the content from the example file

#Save and exit

#Restart the sssd service
sudo systemctl restart sssd

#Does it work?
su - john

pwd

id