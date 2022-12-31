#!/bin/python3

#program to find the greatest of two numbers

import time

print ("Program to find the biggest of two number")

time.sleep( 1 )
print ("enter value of a")
a = float(input())

time.sleep( 1 )
print ("enter value of b")
b = float(input())

if (a>b):
    print ("a is greater than b")
elif (b>a):
    print ("b is greater than a")
else:
    print ("a & b are equal")
