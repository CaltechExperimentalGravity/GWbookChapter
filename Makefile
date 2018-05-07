#!/usr/bin/make -f

DOC = ws-book975x65

.PHONY: all
all: pdf
pdf:
	latexmk -pdf $(DOC)

continuous:
	latexmk -pdf -pvc $(DOC)

.PHONY: clean
clean:
	latexmk -C $(DOC)
