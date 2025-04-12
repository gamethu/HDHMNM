#!bin/bash

for ((i=1; i<=10; i++)); do
	sudo useradd -p $i "usertest$i"
done
