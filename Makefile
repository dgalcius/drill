

default: drill.pdf

%.pdf: %.tex
	lualatex  $<

clean:
	rm -rf *.aux *.fls *.log *.nav *.pdf *.out *.snm *.toc
#-delete
