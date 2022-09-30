#!/bin/bash
if [ $# -eq 3 ]
then 
	if [[ $1 == ?(+|-)+([0-9]) ]]
	then 
		if [[ $2 == +([+|\-|*|/|%|^]) ]]
		then 
			if [[ $3 == ?(+|-)+([0-9]) ]]
			then 
				echo -n "$1 $2 $3 = "
				case $2 in 
					+)
						echo $(($1 + $3))
					;;
					\-)
						echo $(($1 - $3))
					;;
					\*)
						echo $(($1 * $3))
					;;
					\/)
						echo $(($1 / $3))
					;;
					^)
						answer=1
						counter=0
						while [ $counter -lt $3 ]
						do
							(( counter++ ))
							let answer=$answer*$1
						done
						echo $answer
					;;
					%)
						echo $(($1 % $3))
					;;
					
					
				esac
			else
				echo "Your third input is not a digit number"
			fi
		else
			echo "Your Second input can contains: +-*/%^"
		fi
	else
		echo "Your First input is not a digit number"
	fi

else
	echo "You have to enter 3 inputs for example : 1 + 2"

fi
