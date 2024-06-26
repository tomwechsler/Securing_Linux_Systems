#Working on ubuntu

#Create some directories
mkdir -p ubuntu/{22,20,18,16,14}.04/{gold,current}

#Install tree
sudo apt update && sudo apt install -y tree

#Tree
tree ubuntu

#Show the permissions
ls -lR ubuntu/

#Set the umask
umask 077

#Remove
rm -r ubuntu

#Create the directories again
mkdir -p ubuntu/{22,20,18,16,14}.04/{gold,current}

#Show the permissions
ls -lR ubuntu/

#Create a new file named file1 in the /ubuntu directory
touch /ubuntu/file1

#List the details of file1 in the /ubuntu directory
ls -l /ubuntu/file1

#Recursively add execute permission to all users for directories under the ubuntu directory
chmod -vR a+X ubuntu

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