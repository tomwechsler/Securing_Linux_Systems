#Working on ubuntu

#Change into .ssh
cd .ssh

#List the content
ls

#Count the lines in known_hosts
wc -l known_hosts

#Show the content
cat known_hosts

#Lets delete the file
rm known_hosts

#Start a ssh session
ssh 192.168.56.103

exit

#Show the known_hosts file
cat known_hosts

#No host checking
ssh -o StrictHostKeyChecking=no 192.168.56.103

exit

#Show the known_hosts file
cat known_hosts

#Lets delete the file again
rm known_hosts

#No host checking and no know_hosts file
ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null 192.168.56.103

exit

#No host checking
ssh -o StrictHostKeyChecking=no 192.168.56.103

exit

#Rebuild the openSUSE system - this does cause an message for the new ssh session
#Switch to openSUSE
vagrant destroy openSUSE
vagrant up openSUSE

#Back on Ubuntu
ssh 192.168.56.103

#Change the config
ssh-keygen -R 192.168.56.103

#Set the options in a config file
vim config

Host 192.168.56.*
  StrictHostKeyChecking no
  UserKnownHostsFile /dev/null

#Save and exit

#Remove the known_hosts file
rm known_hosts

#Start a session
ssh 192.168.56.101

#Show the known_hosts file (nothing as expected)
cat known_hosts

#Start a session
ssh 192.168.56.103

#Show the known_hosts file (nothing as expected)
cat known_hosts