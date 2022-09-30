#!/bin/bash

read -p "Enter a number between 1 - 3 " number
end=5

case $number in

	1)
	counter=1
	while [ $counter -lt $(($end+1)) ]
	do	
		j=1
		while [ $j -lt $(($counter+1)) ]
		do 
			echo -n $counter
			((j++))
		done
		((counter++))
		echo

	done
	
	;;
	2)
	counter=1
	while [ $counter -lt $(($end+1)) ]
	do	
		j=1
		while [ $j -lt  $((end - counter + 1 )) ]
		do 
			echo -n " "
			((j++))
		done
		j=1
		while [ $j -lt $(($counter+1)) ]
		do 
			echo -n ". "
			((j++))
		done
		((counter++))
		echo

	done
	counter=1
	while [ $counter -lt $(($end+1)) ]
	do	
		j=1
		while [ $j -lt  $((counter)) ]
		do 
			echo -n " "
			((j++))
		done
		j=1
		while [ $j -lt $(($end - $counter + 2 )) ]
		do 
			echo -n ". "
			((j++))
		done
		((counter++))
		echo

	done
	
	;;
	3)
		counter=1
		while [ $counter -lt $(($end+1)) ]
		do	
			j=1
			while [ $j -lt  $((counter)) ]
			do 
				echo -n "| "
				((j++))
			done
			
			((counter++))
			echo "|_"

		done
	;;
	*) 
	echo "Wrong number, try again" 
	


esac

