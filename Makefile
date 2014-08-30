# LaTeX Makefile
TEXFILES=$(wildcard *.tex)
TARGETS=$(patsubst %.tex,%.pdf,$(TEXFILES))

all: $(TARGETS)

%.pdf: %.tex
	latexmk -pdf -pdflatex="pdflatex -interactive=nonstopmode" -use-make $<

clean:
	latexmk -c
	rm -rf *.pdf
