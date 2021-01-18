all: README.md

README.md:
	echo "Guessing Game - Final Project<br/>" > README.md
	date >> README.md
	echo "<br/>" >> README.md
	cat guessinggame.sh | wc -l >> README.md