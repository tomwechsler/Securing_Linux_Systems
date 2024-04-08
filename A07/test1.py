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