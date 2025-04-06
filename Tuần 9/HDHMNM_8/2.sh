#! bin/bash

echo -n "N: "
read n
if [ $n -lt 2 ]; then
	echo "no"
else
	for ((i=2; i<=((n/2)); i++)); do
		if ((n%i==0)); then
			echo "no"
			exit 1
		fi
	done
	echo "yes"
fi

