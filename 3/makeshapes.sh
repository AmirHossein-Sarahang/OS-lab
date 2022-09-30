echo "Witch shape do you want 1 2 or 3?"
read shapenumber
if [ $shapenumber -eq 1 ]
	then
	echo "Enter n"
	read n
	for((i=1; i<=n; i++))
	do
	for((j=1; j<=i; j++))
 	do
  	echo -n "$i "
 	done
 	echo
	done
fi

if [ $shapenumber -eq 2 ]
then
	echo "Enter n"
read rows
for((i=1; i<=rows; i++))
do
  for((j=1; j<=rows - i; j++))
  do
    echo -n "  "
  done
  for((j=1; j<=2*i - 1; j++))
  do
    echo -n "* "
  done
  echo
done
fi
if [ $shapenumber -eq 3 ]
then
	echo "Enter n"
	read n
	for((i=1; i<=n; i++))
	do
 	 for((j=1; j<=i; j++))
 	 do
   	 echo -n "|_"
  	done
 	 echo
	done
fi

