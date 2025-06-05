#!/bin/bash

function prime() {
	local n=$1
	if ((n<2)); then
		return 0
	else
		for ((i=2; i<=((n/2)); i++)); do
			if ((n%i==0)); then
				return 0
			fi
		done
		return 1
	fi
}

echo -n "N: "
read n
prime $n
if [ $? -eq 1 ]; then
    echo "True"
else
    echo "False"
fi

