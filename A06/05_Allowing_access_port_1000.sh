#Working on rocky

#Switch to the root user and simulate a full login shell
sudo -i

#Set SELinux in permissive mode
setenforce 0

#Install the 'httpd' and 'git' package using dnf package manager
dnf install -y httpd git

#Stop the 'httpd' service
systemctl stop httpd

#Display the line containing 'Listen 80' in the '/etc/httpd/conf/httpd.conf' file
grep 'Listen 80' /etc/httpd/conf/httpd.conf

#List all SELinux network port contexts
semanage port -l

#List all SELinux network port contexts and filter for 'http'
semanage port -l | grep http

#Replace 'Listen 80' with 'Listen 1000' in the '/etc/httpd/conf/httpd.conf' file
sed -Ei 's/^(Listen) 80/\1 1000/' /etc/httpd/conf/httpd.conf

#Display the line containing 'Listen 80' in the '/etc/httpd/conf/httpd.conf' file
grep 'Listen 80' /etc/httpd/conf/httpd.conf

#Display the line containing 'Listen 1000' in the '/etc/httpd/conf/httpd.conf' file
grep 'Listen 1000' /etc/httpd/conf/httpd.conf

#Start the 'httpd' service
systemctl start httpd

#Stop the 'httpd' service
systemctl stop httpd

#Set SELinux in enforcing mode
setenforce 1

#Start the 'httpd' service
systemctl start httpd #This will fail

#Search the audit logs for AVC messages
ausearch -m AVC -ts recent

#Display the lines containing 'sealert' in the '/var/log/messages' file
grep sealert /var/log/messages

#Display the SELinux alert with the specified identifier
sealert -l 2a8b1e4e-2b1e-4b1a-8b1e-4b1a2e1b2a1e

#Add a new SELinux network port context for TCP port 1000 with 'http_port_t' type
semanage port -a -t http_port_t -p tcp 1000

#Start the 'httpd' service
systemctl start httpd

#Display the listening sockets
ss -ntl