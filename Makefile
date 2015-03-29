#!/usr/bin/make -f

DOC = main

.PHONY: all
all: pdf
pdf:
	pdflatex $(DOC).tex
	bibtex $(DOC).aux
	pdflatex $(DOC).tex
	pdflatex $(DOC).tex

.PHONY: clean
clean:
	rm -f $(DOC).aux $(DOC).dvi $(DOC).lof $(DOC).log $(DOC).lot $(DOC).out $(DOC).ps $(DOC).toc $(DOC).blg $(DOC).bbl $(DOC).synctex.gz
