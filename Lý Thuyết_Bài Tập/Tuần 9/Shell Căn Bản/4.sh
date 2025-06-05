#!/bin/bash

echo -n "a: "
read a
echo -n "b: "
read b
echo "y = $a*x + $b"
echo "$a*x + $b = 0"
if [ $a -eq 0 ]; then
	if [ $b -ne 0 ]; then
		echo "VN"
	else
		echo "VSN"
	fi
else 
	echo -n "x = "
	echo "scale=2;$b*(-1)/$a" | bc
fi
