#Working on the rocky system

#Add a new group named 'ops' with root privileges
sudo groupadd ops

#Run a command with the group ID of 'ops'
newgrp ops

#Set the password for 'ops' group with root privileges
sudo gpasswd ops

#Run a command with the group ID of 'ops' after setting the password
newgrp ops

#Print the user identifier, group identifier, and groups for 'vagrant'
id vagrant

#With the group password set, the group changes to a self-service model

#Add 'vagrant' user to 'ops' group with root privileges
sudo gpasswd -a vagrant ops

#Set 'vagrant' user as an administrator of 'ops' group with root privileges
sudo gpasswd -A vagrant ops

#Add 'user1' to 'ops' group
gpasswd -a user1 ops

#Get the 'ops' group entry from the group database
getent group ops

#Search for 'ops' in the shadow file with root privileges
sudo grep ops /etc/gshadow