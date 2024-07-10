#Working on rocky

#Check the man pages
man semanage-fcontext

#The location for context files
sudo ls /etc/selinux/targeted/contexts/files

#List the SELinux metadata
ls -dZ /home

ls -dZ /home/vagrant

#Create a new directory for new user homes
sudo mkdir /staff

ls -ldZ /staff

#Set the SELinux context
sudo semanage fcontext -a -e /home /staff

#If we get an error - this is because of the boolean policy, just reboot

#Erease the SELinux context
sudo semanage fcontext -d /staff

#Set it again
sudo semanage fcontext -a -e /home /staff

#Restore it
sudo restorecon -v /staff

#Create a user
sudo useradd -m -d /staff/u1 u1

#Check SELiunx
sudo ls -ldZ /staff/u1