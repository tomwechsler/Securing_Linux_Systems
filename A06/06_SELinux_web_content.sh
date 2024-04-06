#Working on rocky

#Switch to the root user and simulate a full login shell
sudo -i

#Set SELinux in permissive mode
setenforce 0

#Create a new directory named 'web'
mkdir /web

#List the '/web' directory with its security context
ls -ld /web

#Copy all HTML files from '/usr/share/doc/git' directory to '/web' directory
find /usr/share/doc/git -type f -name "*.html" -exec cp {} /web \;

#List the contents of the '/web' directory
ls /web

#Display the line containing '/var/www/html' in the '/etc/httpd/conf/httpd.conf' file
grep /var/www/html /etc/httpd/conf/httpd.conf

#Replace '/var/www/html' with '/web' in the '/etc/httpd/conf/httpd.conf' file
sed -i 's/\/var\/www\/html/\/web/' /etc/httpd/conf/httpd.conf

#Display the line containing '/web' in the '/etc/httpd/conf/httpd.conf' file
grep /web /etc/httpd/conf/httpd.conf

#Restart the 'httpd' service
systemctl restart httpd

#Display the status of the 'httpd' service
systemctl status httpd

#Send a GET request to 'http://localhost:1000/everyday.html'
curl http://localhost:1000/everyday.html

#Set SELinux in enforcing mode
setenforce 1

#Send a GET request to 'http://localhost:1000/everyday.html'
curl http://localhost:1000/everyday.html #This will fail

#Search the audit logs for AVC messages
ausearch -m AVC -ts recent

#Display the lines containing 'sealert' in the '/var/log/messages' file
grep sealert /var/log/messages

#Display the SELinux alert with the specified identifier
sealert -l 2a8b1e4e-2b1e-4b1a-8b1e-4b1a2e1b2a1e

#Display the manual page for 'semanage-fcontext'
man semanage-fcontext

#Add a new file context for '/web' directory that matches all files and directories and has 'httpd_sys_content_t' type
semanage fcontext -a -t httpd_sys_content_t "/web(/.*)?"

#Restore the SELinux context of the '/web' directory and its contents with verbose output
restorecon -Rv /web

#Send a GET request to 'http://localhost:1000/everyday.html'
curl http://localhost:1000/everyday.html