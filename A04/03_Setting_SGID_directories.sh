#Working on rocky

#we continue where we left off
ls -ld /admin

ls -l /admin

#Lets change the umask
umask 027

#Change the mode
sudo chmod -v g+s /admin

#Create a file
touch /admin/newfile

ls -l /admin/newfile

sudo touch /admin/root2

ls -l /admin/root2