#!/bin/python3

# program to find greates of three numbers
# this is alt version with nested if 

import time

print ("Program to find the biggest of three number")

time.sleep(.1)
print ("enter value of a")
a = float(input())

time.sleep (.1)
print ("enter value of b")
b = float(input())

time.sleep(.1)
print ("enter value of c")
c = float(input())

time.sleep (1)

if (a>b):
    if (a>c):
        print ("a is greatest")
    elif (a==c):
        print ("a & c are greatest")
    else:
        print ("c is greatest")
elif (b>a):
    if (b>c):
        print ("b is greatest")
    elif (b==c):
        print ("b & c are greatest")
    else:
        print ("c is greatest")
else:
    if (a>c):
        print ("a & b are greatest")
    elif (a<c):
        print ("c is greatest")
    else:
        print ("a, b & c are equal")
