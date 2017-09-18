echo "Program one"
echo "Please enter a string"
read response
if [[ $response =~ ^[A-Z] ]]
then
	echo "how proper"
fi
echo "Program one  Ended"
echo "Program Two"
echo "Please enter a number"
read numb
res=$(expr $numb % 2)
echo $res
if [[ $res ]]
then
	echo "The number is even"
else
	echo "The number is odd"
fi
echo "Program Two is ended"
