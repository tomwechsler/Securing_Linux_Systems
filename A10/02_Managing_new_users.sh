#Working on rocky with a root session

sudo -i

#The defaults
useradd -D

#Create a user with the defaults
useradd u1

#The ids for the user
id u1

#The users home
ls /home

#Create a user without a home directory
useradd -M u1a

#The users home
ls /home

#Search also in the database
getent passwd u1

#The defaults also the file
useradd -D

cat /etc/default/useradd

#But there is more defaults
grep -E '^(CREATE_HOME|USERGROUPS_ENAB)' /etc/login.defs

#Edit the config file
vim /etc/login.defs

#Set CREATE_HOME no

#Save and exit

#Create an other user
useradd u1b

#The users home
ls /home

#We can override the defaults
useradd -m -G wheel -c 'user two' u2

#Let's proof
ls /home

id u2