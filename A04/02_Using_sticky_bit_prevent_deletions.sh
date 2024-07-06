#Working on rocky

#Check the group membership
id

#Add a group
sudo usermod -aG wheel vagrant

#Check the group membership and logout/login
id
exit

#Lets have a look at the /tmp
ls -ld /tmp

#Create a directory and change the perms/group
sudo mkdir /admin

#Change the group ownership of /admin to wheel
sudo chgrp wheel /admin

#Display the detailed listing of the /admin directory
ls -ld /admin

#Remove all permissions for others on /admin
sudo chmod -v o= /admin

#Display the detailed listing of the /admin directory again
ls -ld /admin

#Add write permission for the group on /admin
sudo chmod -v g+w /admin

#Now lets create some files
touch /admin/vagrant
sudo touch /admin/root

#Perms as expected, but not what we want
ls -l /admin

#We are able to delete all content (the vagrant user is in the wheel group and the wheel group has write perms, which includes delete)
rm /admin/*

ls /admin

#Lets change the perms
sudo chmod -v o+t /admin

ls -ld /admin

#Create the files again
touch /admin/vagrant
sudo touch /admin/root

#Now we delete
rm /admin/*

#To see when the x bit is set or not
sudo chmod -v o+x /admin

sudo chmod -v o-x /admin