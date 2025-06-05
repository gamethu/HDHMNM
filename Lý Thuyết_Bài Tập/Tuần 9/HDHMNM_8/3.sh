#!/bin/bash

echo "1)PT bac 1"
echo "2)PT bac 2"
echo -n "Choose: "
read choose
case $choose in
	1)
		echo -n "a: "
		read a
		echo -n "b: "
		read b
		echo "y = $a*x + $b"
		echo "$a*x + $b = 0"
		if [ $a -eq 0 ]; then
			if [ $b -ne 0 ]; then
				echo "VN"
			else
				echo "VSN"
			fi
		else 
			echo -n "x = "
			echo "scale=2;$b*(-1)/$a" | bc
		fi
	;;
	2)
		echo -n "a: "
		read a
		echo -n "b: "
		read b
		echo -n "c: "
		read c
		echo "y = $a*x^2 + $b*x + $c"
		echo "$a*x^2 + $b*x + $c = 0"
		if [ $a -eq 0 ]; then
			if [ $b -eq 0 ]; then
				if [ $c -ne 0 ]; then
					echo "VN"
				else
					echo "VSN"
				fi
			else 
				echo -n "x = "
				echo "scale=2;$c*(-1)/$b" | bc
			fi
		else
			delta=$((b*b-4*a*c))
			if [ $delta -lt 0 ]; then
				echo "VN"
			elif [ $delta -eq 0 ];then
				echo -n "x1 = x2 = "
				echo "scale=2;$b*(-1)/2*$a" | bc
			else
				echo -n "x1 = "
				echo "scale=2;($b*(-1)+sqrt($delta))/2*$a" | bc
				echo -n "x2 = "
				echo "scale=2;($b*(-1)-sqrt($delta))/2*$a" | bc
			fi
		fi
	;;
	*) 
		echo "Invalid input"
	;;
esac
