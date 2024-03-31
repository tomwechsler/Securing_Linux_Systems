#Working on ubuntu

#Touch a file
touch file1

#List the perms
ls -l file1

#Check the umask
umask

#Change the umask
umask 0

#Check the umask
umask

#Create a file
touch file2

#Check the perms
ls -l file*

#What about directories
mkdir dir1
ls -ld dir1

#Change the umask again
umask 77
umask
touch file3
ls -l file*