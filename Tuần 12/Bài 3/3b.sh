#!/bin/bash

function InterchangeSort() {
    local n=${#a[@]}
    for (( i=0; i<n-1; i++ )); do
        for (( j=i+1; j<n; j++ )); do
            if (( a[i] > a[j] )); then
                temp=${a[$i]}
                a[$i]=${a[$j]}
                a[$j]=$temp
            fi
        done
    done
}

n=$1
# Lấy các phần tử của mảng từ đối số thứ 2 trở đi
declare -a a=("${@:2}")

echo "Before: ${a[*]}"
InterchangeSort a
echo "After: ${a[*]}"

