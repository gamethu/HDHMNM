#!/bin/bash

function LocTheoMaSV() {
	echo -n "MSSV: "
	read mssv
	while read line; do
		MaSV=$(echo $line | awk '{print $1}')
		if ((mssv==MaSV)); then
			echo $line
			break
		fi
	done < absent_data
}
LocTheoMaSV
