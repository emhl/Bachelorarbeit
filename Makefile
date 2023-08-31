# Variables
MAINFILE = main
TEX = pdflatex

# Commands

all: $(MAINFILE).tex
	$(TEX) -output-directory=./latex.out $(MAINFILE).tex
	$(TEX) -output-directory=./latex.out $(MAINFILE).tex

clean:
	rm -rf ./out/*

get-plots:
	rsync -avz --progress scc:Documents/Bachelorarbeit/Analysis/plots/ ~/Bachelorarbeit/Analysis/plots/

