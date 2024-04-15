#Working on ubuntu

#List the commands the current user can execute as root using 'sudo'
sudo -l

#Use 'sudo' to create a new user named 'bob' with home directory and bash as the default shell
sudo useradd -m bob -s /bin/bash

#Use 'sudo' to set or change the password for the 'bob' user
sudo passwd bob

#Print the user and group IDs for the 'bob' user
id bob

#Use 'sudo' to edit the 'sudoers' file, which controls which users can run what software on which machines as which other users
sudo visudo

#Use 'sudo' to edit the 'bob' file in the '/etc/sudoers.d' directory, which is an additional location for 'sudoers' configuration files
sudo visudo -f /etc/sudoers.d/bob
#bob ALL=(root) /bin/passwd, !/usr/bin/passwd root
#Becareful with the syntax
#bob ALL(root) /bin/passwd, !/usr/bin/passwd root -> will not work

#Switch to the 'bob' user, providing an environment similar to what the 'bob' user would expect if they logged in directly
su -l bob

#List the commands the current user can execute as root using 'sudo'
sudo -l

#Use 'sudo' to set or change the password for the 'ubuntu' user
sudo passwd ubuntu

#Use 'sudo' to set or change the password for the 'root' user
sudo passwd root

#List the commands the current user can execute as root using 'sudo'
sudo -l

#Invalidate the current user's timestamp by resetting the user's sudo timer
sudo -k

#List the commands the current user can execute as root using 'sudo'
sudo -l