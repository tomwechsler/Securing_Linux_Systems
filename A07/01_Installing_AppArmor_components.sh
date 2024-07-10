#Working on opensuse

#Start a root session
sudo su -

#Are there any AppArmor tools
aa- TABTAB

#Install the tools
zypper in -y apparmor-utils

#Check again
aa- TABTAB

aa-status

#Lets install the profiles
zypper in -y apparmor-profiles

#Check the service
systemctl status apparmor

#Show the status
aa-status