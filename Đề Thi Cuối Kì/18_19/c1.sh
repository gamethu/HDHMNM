#!/bin/bash

echo -n "input: "
read n
while ((n<1)); do
	echo "Bạn đã nhập sai, đề nghị nhập lại"
	echo -n "input: "
	read n
done
echo -n "output: "
echo "obase=2;$n" | bc
