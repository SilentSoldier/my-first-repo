readme.txt: guessinggame.sh
	echo 'The Title of this project is Guessing Game' > readme.txt
	date
	echo 'The number of lines in this code are:' >> readme.txt
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> readme.txt
