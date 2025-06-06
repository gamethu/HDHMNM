#!/bin/bash

function taouser() {
	echo -n "username: "
	read username
	sudo useradd -p 123456 "$username"
	if (($?==0)); then
		echo "tc"
	fi
}
taouser
