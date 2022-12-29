#!/bin/bash

clear
echo -n "enter a number to check if it is even or odd: "
read n

echo -n echo "Result: "
if [ 'expr $n % 2' == 0 ]
then
	echo "$n is even"
else
	echo "$n is odd"
fi


