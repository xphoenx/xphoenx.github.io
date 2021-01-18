all: README.md

README.md:
	echo "Guessing Game - Final Project" >> README.md
	date >> README.md
	cat guessinggame.sh | wc -l >> README.md