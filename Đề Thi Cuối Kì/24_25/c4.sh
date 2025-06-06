#!/bin/bash

function ThongKeVangTheoThang() {
	echo -n "Thoi gian: "
	read thoiGian
	while read line; do
		tg=$(echo $line | awk '{print $5}')
		if [ "$tg" == "$thoiGian" ]; then
			echo $line
		fi
	done < absent_data
}
ThongKeVangTheoThang
