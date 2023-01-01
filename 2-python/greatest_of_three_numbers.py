#!/bin/python3

#program to find greates of three numbers

import time

print ("Program to find the biggest of three number")

time.sleep (0.1)
print ("enter value of a")
a = float(input())

time.sleep (0.1)
print ("enter value of b")
b = float(input())

time.sleep (0.1)
print ("enter value of c")
c = float(input())

time.sleep (0.4)

if (a>b and a>c):
    print ("a is greatest")
elif (b>a and b>c):
    print ("b is greatest")
elif (c>a and c>b):
    print ("c is greatest")
elif (a==b and a>c):
    print ("a & b are greatest")
elif (a==c and a>b):
    print ("a & c are greatest")
elif (b==c and b>a):
    print ("b & c are greatest")
else:
    print ("a, b & c are equal")
