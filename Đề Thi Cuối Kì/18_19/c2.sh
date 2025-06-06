#!/bin/bash

function iExist() {
	IP=$1
	while read line; do
		id=$(echo $line | awk '{print $1}')
		if [ "$id" == "$IP" ]; then
			return 1
		fi
	done < data.txt
	return 0
}

echo -n "Ip: "
read ip
iExist $ip

if (($?==0)); then
	echo -n "Domain: "
	read domain
	echo "$ip $domain" >> data.txt
	while read line; do
		echo $line
	done < data.txt
else
	while read line; do
		id=$(echo $line | awk '{print $1}')
		dom=$(echo $line | awk '{print $2}')
		if [ "$id" == "$ip" ]; then
			echo "Domain: $dom"
			break
		fi
	done < data.txt
	
fi

