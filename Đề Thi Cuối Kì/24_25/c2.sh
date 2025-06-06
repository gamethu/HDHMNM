#!/bin/bash

function LocDuLieuTheoLop() {
	echo -n "Ten lop: "
	read tenLop
	touch $tenLop
	while read line; do
		lop=$(echo $line | awk '{print $3}')
		if [ "$lop" == "$tenLop" ]; then
			echo $line >> "./$tenLop"
		fi
	done < absent_data
}
LocDuLieuTheoLop
