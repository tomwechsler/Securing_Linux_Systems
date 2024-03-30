#Working on ubuntu

#Generate a hash
openssl passwd -1 Password1

#Run again, it will generate a different hash
openssl passwd -1 Password1

#And again
openssl passwd -1 Password1

#If we use the salt from the last output, it generates the same hash
openssl passwd -1 -salt mysalt Password1 

#And again and again
openssl passwd -1 -salt mysalt Password1