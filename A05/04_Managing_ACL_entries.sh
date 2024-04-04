#Working on rocky

#Switch to the root user
sudo -i

#Create a new directory named 'private' with 700 permissions
mkdir -m 700 /private

#List the contents of the '/private' directory
ls /private

#List the permissions of the '/private' directory
ls -ld /private

#Leave the root shell
exit

#No permissions for 'vagrant' user to access the '/private' directory
ls /private

#Set the ACL for the '/private' directory to give 'vagrant' user read, write, and execute permissions with root privileges
sudo setfacl -m u:vagrant:rwx /private

#List the contents of the '/private' directory
ls /private

#List the permissions of the '/private' directory after setting the ACL
ls -ld /private #Notice the '+' sign at the end of the permissions

#Set the default ACL for the '/private' directory to give 'vagrant' user read, write, and execute permissions with root privileges
sudo setfacl -m d:u:vagrant:rwx /private

#Create a new file named 'file1' in the '/private' directory
touch /private/file1

#Get the ACL for the 'file1' file in the '/private' directory
getfacl /private/file1

#Create a new file named 'fileroot' in the '/private' directory with root privileges
sudo touch /private/fileroot

#Get the ACL for the 'fileroot' file in the '/private' directory
getfacl /private/fileroot

#Set the ACL for the '/private' directory to give 'tux' user read and execute permissions with root privileges
sudo setfacl -m u:tux:rx /private

#Get the ACL for the '/private' directory
getfacl /private

#Remove the ACL for 'tux' user from the '/private' directory with root privileges
sudo setfacl -x u:tux /private

#Get the ACL for the '/private' directory after removing the ACL for 'tux' user
getfacl /private

#Set the ACL for the '/private' directory to give 'wheel' group read and execute permissions with root privileges
sudo setfacl -m g:wheel:rx /private

#Get the ACL for the '/private' directory
getfacl /private

#Backup the ACL for the '/private' directory to the '/tmp/backupacl' file
getfacl /private > /tmp/backupacl

#Display the contents of the '/tmp/backupacl' file
cat /tmp/backupacl

#Remove the ACL for 'wheel' group from the '/private' directory with root privileges
sudo setfacl -x g:wheel /private

#Get the ACL for the '/private' directory after removing the ACL for 'wheel' group
getfacl /private

#Remove the default ACL from the '/private' directory with root privileges
sudo setfacl -k /private

#Get the ACL for the '/private' directory after removing the default ACL
getfacl /private

#Remove all ACLs from the '/private' directory with root privileges
sudo setfacl -b /private

#Get the ACL for the '/private' directory after removing all ACLs
getfacl /private

#Change the current directory to '/private'
cd /private

#Display the contents of the '/tmp/backupacl' file
cat /tmp/backupacl

#Change the current directory to '/'
cd /

#Restore the ACL for the '/private' directory from the '/tmp/backupacl' file with root privileges
sudo setfacl --restore=/tmp/backupacl

#List the permissions of the '/private' directory
ls -ld /private

#Get the ACL for the '/private' directory
getfacl /private