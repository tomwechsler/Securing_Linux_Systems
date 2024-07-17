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

#Use cut to print the first and third fields
cut -f1,3 -d: /etc/passwd | grep vagrant

#Use awk to print the first and third fields
awk -F: '/vagrant/ { print $1 " " $3}' /etc/passwd