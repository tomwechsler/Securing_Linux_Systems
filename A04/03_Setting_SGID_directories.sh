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

#Display the detailed listing of the newfile in the /admin directory
ls -l /admin/newfile

#Create a new file named root2 in the /admin directory with root privileges
sudo touch /admin/root2

#Display the detailed listing of the root2 file in the /admin directory
ls -l /admin/root2