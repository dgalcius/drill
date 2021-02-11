
default: 

#niko-english.tex: niko-english.yml niko-english.tmpl
#	mustache $^ >$@

%.pdf: %.tex
	lualatex  $<

%.yml: %.html
	ruby html2yaml.rb $< >$@

%.tex: %.yml english.tmpl
	mustache $^ >$@

%.txt: %.yml anki.tmpl
	mustache $^ >$@

clean:
	rm -rf *.aux *.fls *.log *.nav *.pdf *.out *.snm *.toc
#-delete

.PHONY:
