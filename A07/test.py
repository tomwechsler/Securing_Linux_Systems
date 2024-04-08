#!/usr/bin/python3
FILE = 'mytext'
try:
  open(FILE,'a').close()
  print(f'Created file: {FILE}')
except:
  print(f'Failed to create file {FILE}')
  exit(1)