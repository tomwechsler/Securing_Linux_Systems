#Working on ubuntu

#Create a directory
sudo mkdir -m 701 /shared

ls -ld /shared

#Change in to the directory
cd /shared

ls #permission denied

#Create a file
sudo vim /shared/file1

#write some text, save and exit

#ls is not allowed
ls

#But if we know the file we can read the content
cat file1