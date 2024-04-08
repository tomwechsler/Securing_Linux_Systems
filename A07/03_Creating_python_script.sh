#Working on opensuse with a root session

#Create a python script
vim test.py

#!/usr/bin/python3
FILE = 'mytext'
try:
  open(FILE,'a').close()
  print(f'Created file: {FILE}')
except:
  print(f'Failed to create file {FILE}')
  exit(1)

#Save and exit

#Make it executable
chmod u+x test.py

#Test it
./test.py

ls

rm mytext