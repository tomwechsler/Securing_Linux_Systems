#Working on opensuse

#Open the script
vim test.py

#!/usr/bin/python3
FILE = 'mytext'
try:
  f = open(FILE,'a')
  f.write("This is text")
  f.close()
  print(f'Created file: {FILE}')
except:
  print(f'Failed to create file {FILE}')
  exit(1)

#Save and close

#Test the script
./test.py

cat mytext

#Open the script
vim test.py

#!/usr/bin/python3
FILE = 'mytext'
try:
  f = open(FILE,'a')
  f.write("This is text")
  print(f'Created file: {FILE}')
  f.close()
except:
  print(f'Failed to create file {FILE}')
  exit(1)

try:
  f = open(FILE, 'r')
  f.close()
  print(f'Read file: {FILE}')
except:
  print(f'Failed to read file {FILE}')
  exit(2)

#Save and exit

#Test the script (it will fail to read)
./test.py

#Edit the profile
logprof

Type A (Allow)

Type S (Save)

#Test the script (it will work)
./test.py