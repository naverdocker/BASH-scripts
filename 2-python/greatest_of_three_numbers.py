#!/bin/python3

#program to find greates of three numbers

import time

print ("Program to find the biggest of three number")

time.sleep( 1 )
print ("enter value of a")
a = float(input())

time.sleep( 1 )
print ("enter value of b")
b = float(input())

time.sleep( 1 )
print ("enter value of c")
c = float(input())

if (a>b and a>c):
    print ("a is greater than b & c")
elif (b>a and b>c):
    print ("b is greater than a & c")
elif (c>a and c>b):
    print ("c is greater than a & b")
elif (a==b and a>c):
    print ("a & b are equal -- a & b are greater than c")
elif (a==c and a>b):
    print ("a & c are equal -- a & c are greater than b")
elif (b==c and b>a):
    print ("b & c are equal -- b & c are greater than a")
else:
    print ("a, b & c are equal")
