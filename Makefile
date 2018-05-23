.PHONY: how-merge-works.pdf it

how-merge-works.pdf: how-merge-works.tex
	@make clean
	pdflatex -halt-on-error $<
	pdflatex -halt-on-error $<   # If run twice, TOC and quick-overviews exist

it: how-merge-works.pdf
	pdflatex -halt-on-error how-merge-works.tex

clean:
	rm -f *.aux *.log *.nav *.out *.snm *.toc
