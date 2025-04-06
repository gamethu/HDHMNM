#!/bin/bash

echo -n "N: "
read n
echo "obase=2;$n" | bc

