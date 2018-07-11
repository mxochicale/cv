fileinfo := LaTeX Makefile for CV
author := Miguel Xochicale
version := alpha1


FILENAME = cv
LATEX = pdflatex -shell-escape -interaction=nonstopmode -file-line-error
BIB = bibtex

bib: 
	$(LATEX) $(FILENAME).tex
	$(BIB) pr
	$(BIB) npr

pdf: 
	$(LATEX) $(FILENAME).tex
	$(LATEX) $(FILENAME).tex
	evince $(FILENAME).pdf &


clean:         
	rm -f *~
	rm -rf *.backup
	rm -rf *.aux
	rm -rf *.bbl
	rm -rf *.blg
	rm -f `ls $(FILENAME).* | grep -v .tex | grep -v .pdf`
	echo "Cleaning complete!"



