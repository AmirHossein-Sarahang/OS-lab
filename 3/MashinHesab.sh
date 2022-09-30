echo "Enter Two numbers : "
read a
read b
 
# Input type of operation
echo "Enter Choice :"
echo "1. +"
echo "2. -"
echo "3. *"
echo "4. /"
read ch
 
echo
case $ch in
  1)echo $(($a + $b))
  ;;
  2)echo $(($a - $b))
  ;;
  3)echo $(($a * $b))
  ;;
  4)echo $(($a / $b))
  ;;
esac

