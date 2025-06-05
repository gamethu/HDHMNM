#!/bin/bash

function SNT() {
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

function SCP() {
	 local n=$1
	 local sqrt=$(echo "scale=0; sqrt($n)" | bc)
    if ((sqrt*sqrt==n)); then
   	 return 1
    fi
    return 0
}

n=$1
echo -n "SNT: "
SNT $n
if [ $? -eq 1 ]; then
    echo "True"
else
    echo "False"
fi

echo -n "SCP: "
SCP $n
if [ $? -eq 1 ]; then
    echo "True"
else
    echo "False"
fi

