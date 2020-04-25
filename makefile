all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "# Welcome. This is my Unix Workbench Assignment" > README.md
	echo "## Project title -> guessinggame" >> README.md
	echo "\n ### Date and time" >> README.md
	echo $$(date) >> README.md
	echo "\n ### Number of lines" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
clean:
	rm README.md
