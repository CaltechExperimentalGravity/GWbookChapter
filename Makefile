#!/usr/bin/make -f

DOC = ws-book975x65

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
