#!/bin/bash

echo -n "N: "
read n
s=$n
for ((i=1; i<n; i++)); do
	let s=s+i
done
echo "sum(n) = $s"
