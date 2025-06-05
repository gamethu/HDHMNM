#!/bin/bash

echo -n "A: "
read a
echo -n "B: "
read b
echo -n "C: "
read c
max=$a
if [ $b -gt $max ]; then
	max=$b
fi
if [ $c -gt $max ]; then
	max=$c
fi
echo "Max: $max"
