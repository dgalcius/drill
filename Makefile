

default: drill.pdf

%.pdf: %.tex
	lualatex -recorder $<

clean:
	find . -not -name "*.tex" -not -name "Makefile" -not -name "\.git" -delete
