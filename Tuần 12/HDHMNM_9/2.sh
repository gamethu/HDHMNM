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

declare -a a
echo -n "N: "
read n

for (( i=0; i<n; i++ )); do
    echo -n "a[$i] = "
    read a[i]
done

echo "Before: ${a[*]}"
InterchangeSort a
echo "After: ${a[*]}"

