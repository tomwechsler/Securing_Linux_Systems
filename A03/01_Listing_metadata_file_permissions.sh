#Working on ubuntu

#Show the permissions
ls -l /etc/hosts

#This is bit special
ls -l /etc/shadow

#List the size in human readable
ls -lh /etc/services

#List with a subshell -h does not work
ls -lh $(tty)

#The block device -h does not work
ls -lh /dev/sda1

#Show the block device
lsblk

#Show the statistics
stat /etc/hosts

#Just an element of the stat
stat -c %a /etc/hosts   #numbers
stat -c %A /etc/hosts   #letters

#Time of last access, human-readable
stat -c %x /etc/hosts

#Time of last data modification, human-readable
stat -c %y /etc/hosts

#Time of last status change, human-readable
stat -c %z /etc/hosts