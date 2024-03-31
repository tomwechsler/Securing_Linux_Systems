#Working on ubuntu

#Create some directories
mkdir -p ubuntu/{20,18,16,14}.04/{gold,current}

#Install tree
sudp apt update && sudo apt install -y tree

#Tree
tree ubuntu

#Show the permissions
ls -lR ubuntu/

#Set the umask
umask 077

#Remove
rm -r ubuntu

#Create the directories again
mkdir -p ubuntu/{20,18,16,14}.04/{gold,current}

#Show the permissions
ls -lR ubuntu/

#Change the umask again
umask 022

#Create a new file
touch newfile2

ls -l newfile2

#Lets change the permissions
chmod -v +x newfile2

#The x is set because it is allowed by the umask

#Lets change the permissions
chmod -v +w newfile2

#The w is not set because it is not allowed by the umask

#To change we need the "a"
chmod -v a+w newfile2



Often, it is incorrectly thought that symbolic permissions are simpler and only
used when you start your administration career. This is far from the case as we
see with -X. The upper-case X is used to set execute only of directories or files
where execute is already set in one or more objects.