#Working on rocky in a root session

sudo -i

#Create a private directory
mkdir -m 700 ca

cd ca

pwd

ls -a

#First we create the private ke
openssl genrsa -des -out myca.key 4096

ls -a

file myca.key

#Then the public key (the common name is not important)
openssl req -x509 -new -key myca.key -sha256 -days 3650 -out myca.crt

ls -a

file myca.crt

#Now we have to copy the key so that the database can be updated
cp myca.crt /etc/pki/ca-trust/source/anchors/

ls -l /etc/pki/ca-trust/source/anchors/

#The current information is stored here
ls -l /etc/pki/ca-trust/extracted/

#Now we update the database
update-ca-trust extract #This command gets the information from the /etc/pki/ca-trust/source/anchors/