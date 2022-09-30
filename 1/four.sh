#!/bin/bash

read -p "Enter the name of file: " file_name
read -p "Enter the first line: " x
read -p "Enter the last line: " y

counter=1
while read -r line;
do	
	if [ $counter -lt $(($y+1)) ]&&[ $counter -gt $(($x-1)) ]
	then
		echo $line
	fi
	#echo $line
	((counter++))

done < $file_name






