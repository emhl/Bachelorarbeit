# Variables
MAINFILE = main
#TEX = pdflatex -output-directory=./latex.out
TEX = latexmk -outdir=latex.out/ -pdf
# Commands

all: main

main: $(MAINFILE).tex
	$(TEX) $(MAINFILE).tex
	$(TEX) $(MAINFILE).tex

subfiles:
	$(TEX) 1-*.tex 2-*.tex 3-*.tex 4-*.tex 5-*.tex 6-*.tex

clean:
	rm -rf ./out/*

get-plots:
	rsync -avz --progress scc:Documents/Bachelorarbeit/Analysis/plots/ ~/Bachelorarbeit/Analysis/plots/

