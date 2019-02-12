.PHONY: essay.pdf
essay.pdf: essay.tex
	xelatex essay
	bibtex essay
	xelatex essay
	xelatex essay

.PHONY: clean
clean:
	rm -f essay.aux essay.aux essay.bbl essay.blg essay.log

.PHONY: count
count:
	texcount essay.tex
