#!/bin/bash

function luutru() {
	user=$1
	phongban=$2
	echo "$user $phongban" >> data
}
luutru NTD CNTT
