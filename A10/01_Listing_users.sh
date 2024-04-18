#Working on rocky

#List the users
cat /etc/passwd

#Check the man pages
man 5 passwd

#If the man pages are not available
sudo mandb

sudo dnf install -y man-pages man-db man

sudo mandb

#Check the database
getent passwd vagrant

#Check the Order
grep passwd /etc/nsswitch.conf

#Search for vagrant
grep vagrant /etc/passwd

cut -f1,3 -d: /etc/passwd | grep vagrant

awk -F: '/vagrant/ { print $1 " " $3}' /etc/passwd




#The local user account database is the file /etc/passwd. This is a text file accessible by all
#users. It is not usual to store passwords in this file anymore. The command getent can be
#used to display or search the database.

#Typically, the command cut is used to filter the fields; however, we may also need to use grep
#to search for a specific user. Using awk we can cover both with the one command.