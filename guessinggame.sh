echo "How many files are there in this directory"
read response
ls -l >count_files.txt
count=$(egrep ^[-d] count_files.txt | wc -l)
rm count_files.txt
differ=$(expr $response - $count)
function compare {
if [[ $differ -lt -10 ]]
then
	echo "Your Guess is too Low, Please try again"
elif [[ -10 -le $differ ]] && [[ $differ -le -5 ]]
then
	echo "Your Guess is low, Please try again"
elif [[ -5 -lt $differ ]] && [[ $differ -lt 0 ]]
then
	echo "Your Guess is closely low, Please try again"
elif [[ $differ -gt  10 ]]
then
	echo "Your Guess is too High, Please try again"
elif [[ 5 -le $differ ]] && [[ $differ -le 10 ]]
then
	echo "Your Guess is High, Please try again"
elif [[ 0 -lt $differ ]] && [[ $differ  -lt 5 ]]
then
	echo "Your Guess is closely high, Please try again"
fi
}

while [[ $response -ne $count ]]
do
	differ=$(expr $response - $count)
	compare
	read response
done
if [[ $response -eq $count ]]
then
	echo "Congratulations !! You have guessed correctly"
fi
