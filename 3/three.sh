#!/bin/bash

read -p "Enter a number, enter 0 to exit: " entered_number

while [ $entered_number -ne 0 ]
do 
	echo $entered_number
	output=0
	sums=0
	while [ $entered_number -ne 0 ]
	do 
		output=$(( $output * 10 + $entered_number % 10 ))
		sums=$(($sums + $entered_number % 10))
		entered_number=$(( $entered_number / 10 ))
	done 
	echo "Reversed: " $output
	echo "Sum of digits : " $sums
	read -p "Enter a number, enter 0 to exit: " entered_number 
done 

echo "See you later."
