# Variables
MAINFILE = main
TEX = pdflatex

# Commands

all: $(MAINFILE).tex
	$(TEX) -output-directory=./latex.out $(MAINFILE).tex
	$(TEX) -output-directory=./latex.out $(MAINFILE).tex

clean:
	rm -rf ./out/*


