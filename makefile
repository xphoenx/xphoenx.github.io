all: README.md

README.md:
	echo "Guessing Game - Final Project\ " > README.md
	date >> README.md
	echo "<br/>"
	cat guessinggame.sh | wc -l >> README.md