#!/bin/bash

echo -n "N: "
read n
if (( n==0 || n==1)); then
	echo "$n! = 1"
else
	s=$n
	for ((i=2; i<n; i++)); do
		let s=$s*$i
	done
	echo "$n! = $s"
fi

