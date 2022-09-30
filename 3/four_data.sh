#!/bin/bash
counter=1
echo -n "" > file.txt
while [ $counter -lt $1 ]
do 
	echo "line: $counter" >> file.txt
	((counter++))
done

