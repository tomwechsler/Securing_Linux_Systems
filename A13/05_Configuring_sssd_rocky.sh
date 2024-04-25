#Working on alma

#Install the tools
sudo dnf install -y sssd sssd-ldap oddjob oddjob-mkhomedir

#We need to be able to resolve the ubuntu system
echo '192.168.56.102 ubuntu' | sudo tee -a /etc/hosts

ping ubuntu

#Edit the pam config (we need --force)
sudo authselect select sssd with-mkhomedir

sudo authselect select sssd with-mkhomedir --force

#We must enable the oddjobd service
sudo systemctl enable --now oddjobd

#Create the sssd config file
sudo vim /etc/sssd/sssd.conf

#Copy the content from the example file

#Save and exit

#Change the permissions
sudo chmod -v 600 /etc/sssd/sssd.conf
sudo chown root. /etc/sssd/sssd.conf

#Start the sssd service
sudo systemctl enable --now sssd

#and restart
sudo systemctl restart sssd


#Test
su - john

pwd

id