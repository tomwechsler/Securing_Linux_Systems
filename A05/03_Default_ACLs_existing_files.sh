#Working on rocky

#Switch to the root user and simulate a full login shell
sudo -i

#The default ACLs are not inherited for existing files
getfacl /var/www/html/file1

#Set the ACL for the '/var/www/html' directory and its contents recursively to give 'apache' user read permission and deny all permissions for others
setfacl -R -m u:apache:r,o:- /var/www/html

#Get the ACL for the 'file1' file in the '/var/www/html' directory
getfacl /var/www/html/file1