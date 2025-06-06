#!/bin/bash

function xuatthongtin() {
	phongban=$1
	while read line; do
		pb=$(echo $line | awk '{print $2}')
		if [ "$pb" == "$phongban" ]; then
			echo $line
		fi
	done < data
}
xuatthongtin CNTT
