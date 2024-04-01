#Working on ubuntu

#Set the umask
umask 002

#Create a new file
touch new_file

#List the permissions
ls -l new_file

#Change the permissions
chmod a+w new_file

#Add write permission to all users for new_file
chmod -v a+w new_file

#Set permissions to read, write, execute for owner, and read for group for new_file
chmod -v 740 new_file

#Add read permission to others for new_file
chmod -v o+r new_file

#Set permissions to read and write for group and others for new_file
chmod -v go=rw new_file

#Add execute permission to all users for new_file
chmod -v a+x new_file

#Remove execute permission from all users for new_file
chmod -v a-x new_file

#Remove all permissions for group and others for new_file
chmod -v go= new_file




#Another misunderstanding the difference between:
#chmod +x file and chmod a+x file omitting the object, chmod applied permissions allowed via the
#umask. Using -a explicitly, permissions are assigned regardless of the umask.