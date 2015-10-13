all:
	pdflatex thesis.tex && bibtex thesis.aux && pdflatex thesis.tex && pdflatex thesis.tex
word:
	pandoc -s --toc --bibliography=Remote.bib --bibliography=sources.bib --csl=acm-sigchi-proceedings.csl word.tex -o thesis.docx
