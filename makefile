all: readme.md

readme.md: guessinggame.sh
	touch readme.md
	echo "# Welcome. This is my Unix Workbench Assignment" > readme.md
	echo "## Project title -> guessinggame" >> readme.md
	echo "\n ### Date and time" >> readme.md
	echo $$(date) >> readme.md
	echo "\n ### Number of lines" >> readme.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> readme.md
clean:
	rm readme.md
