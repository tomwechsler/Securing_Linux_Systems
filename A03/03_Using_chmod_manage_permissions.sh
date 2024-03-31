#Working on ubuntu

#Set the umask
umask 002

#Create a new file
touch new_file

#List the permissions
ls -l new_file

#Change the permissions
chmod a+w new_file

chmod -v a+w new_file

chmod -v 740 new_file

chmod -v o+r new_file

chmod -v go=rw new_file

chmod -v a+x new_file

chmod -v a-x new_file

chmod -v go= new_file



The command chmod, change mode, is used to adjust the file permissions. Using
the option -v we are able to display both the current and newly assigned
permissions. We can use either octal or symbolic notation.

Another misunderstanding the difference between:
chmod +x file and chmod a+x file omitting the object, chmod applied permissions allowed via the
umask. Using -a explicitly, permissions are assigned regardless of the umask.