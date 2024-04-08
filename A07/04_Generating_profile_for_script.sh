#Working on opensuse with a root session

#Start a root session
sudo su -

#Install rsyslog
zypper install -y rsyslog

#Start the rsyslog service
systemctl enable --now rsyslog

#Generate a profile
aa-genprof test.py

#Switch to the other session
./test.py

#Back to the other session
Type S (Scan)

Type A (Allow)

Type S (Save)

Type F (Finish)

#Switch to the other session
./test.py
#Run again (it works fine)
./test.py