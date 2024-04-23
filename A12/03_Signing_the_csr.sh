#Working on rocky in a root session in the ca directory

sudo -i

pwd

ls

#Copy the csr file
scp vagrant@192.168.56.102:/tmp/ubuntu.csr /root/ca

ls

#We work on the csr file
openssl x509 -req -in ubuntu.csr -CA myca.crt -CAkey myca.key -CAcreateserial -out ubuntu.crt -days 365 -sha256

#Copy the public keys to ubuntu
scp ubuntu.crt myca.crt vagrant@192.168.56.102:/tmp/