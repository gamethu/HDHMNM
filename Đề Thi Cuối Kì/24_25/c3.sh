#!/bin/bash

function DemVangTheoLop() {
	echo -n "Ten lop: "
	read tenLop
	s=0
	while read line; do
		lop=$(echo $line | awk '{print $3}')
		if [ "$lop" == "$tenLop" ]; then
			let s=s+1
		fi
	done < absent_data
	echo "Tong so vang: $s" 
}
DemVangTheoLop
