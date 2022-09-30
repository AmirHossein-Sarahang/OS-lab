#!/bin/bash

if [ $# -lt 2 ]||[ $# -gt 2 ]
then 
	echo "You have to Enter 2 input arguments. Try again."
else
	
	if [[ $1 == ?(+|-)+([0-9]) ]]&&
	[[ $2 == ?(+|-)+([0-9]) ]]
	then
		echo "A: Sum of $1 and $2 =" $(($1 + $2))
		echo -n "B: Larger number is: "
		if [ $1 -lt $2 ]
		then 
			echo $2
		else
			echo $1
		fi	
	else
		echo "Not an integer inputs"
	fi
fi


