#!bin/bash

echo -n "N: "
read n
rev=""
while [ $n -gt 0 ]; do
	let digit=$n%10
	let rev="$rev$digit"
	let n=$n/10
done
echo "Reversed number: $rev"
