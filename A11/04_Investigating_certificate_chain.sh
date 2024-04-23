#Working on ubuntu

#In the end it will timeout
openssl s_client -connect ubuntu:443

#In the end it will timeout
openssl s_client -connect ubuntu:443 -showcerts

#Lets use less
openssl s_client -connect ubuntu:443 -showcerts | less

#Investigate an "real" Page
openssl s_client -connect admin.ch:443 -showcerts | less