#Working on ubuntu

#List the metadata
ls -l newfile2

#Check the group membership
id

#Add a group
sudo usermod -aG sudo vagrant

#Check the group membership
id #not current in this bash
id vagrant #In the background

#To renew the group membership we have to logout and login
exit

#Check the group membership
id

#List the metadata
ls -l newfile2

#Change the group (no root need, we belong to the sudo group)
chgrp sudo newfile2

ls -l newfile2

#Change the owner (sudo is needed)
sudo chown root newfile2

ls -l newfile2

#Or this way (change both)
sudo chown vagrant. newfile2 #If nothing comes after the dot the primary group of the user is used

ls -l newfile2