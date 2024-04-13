#Working on ubuntu

#Start a root session
sudo su -

#Are there any AppArmor tools
aa- TABTAB

#Install the tools
apt install -y apparmor-utils

#Check again
aa- TABTAB

aa-status

#Lets install the profiles
apt install -y apparmor-profiles

#Check the service
systemctl status apparmor

#Show the status
aa-status



#Adding the tools will enable AppArmor on your system but without profiles. Adding
#profiles add targets to secure.