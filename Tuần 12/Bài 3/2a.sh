#!bin/bash

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

echo -n "N: "
read n

snt=""
scp=""
for ((j=1; j<=n; j++)); do
	SNT $j
	if (($?==1)); then
		snt="$snt $j"
	fi
	SCP $j
	if (($?==1)); then
		scp="$scp $j"
	fi
done

echo "SNT: $snt"
echo "SCP: $scp"

