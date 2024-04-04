#Working on rocky

#First we remove apache
sudo dnf remove httpd

#And also the index.html
sudo rm -rf /var/www/html/

#Check the umask
umask

#Install apache
sudo dnf install -y httpd

#Create a file
touch /var/www/html/file1

#Set the default acls
sudo setfacl -m d:u:apache:r,d:o:- /var/www/html

#Check the perms (a + at the end - indicates ACLs)
ls -ld /var/www/html

getfacl /var/www/html

#Create a new index.html file
echo "Hello from the new Website!" | sudo tee /var/www/html/index.html

#The permissions
getfacl /var/www/html/index.html

ls -l /var/www/html/index.html