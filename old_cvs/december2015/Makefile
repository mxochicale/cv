
fileinfo := LaTeX Makefile
author := Perez-Xochicale Miguel Angel
version := alpha1

# March 24,2015 - UoB

#References
#http://tex.stackexchange.com/questions/40738/how-to-properly-make-a-latex-project
#https://danielkaes.wordpress.com/2009/03/14/compiling-latex-documents-using-makefiles/
#http://www.cs.berkeley.edu/~jaein/notes/Makefile.pdflatex


FILENAME = dec15
LATEX = pdflatex -shell-escape -interaction=nonstopmode -file-line-error
BIB = bibtex

all: 
	$(LATEX) $(FILENAME).tex
	$(BIB) $(FILENAME)
	$(LATEX) $(FILENAME).tex
	evince $(FILENAME).pdf &

clean:         
	rm -f *~
	rm -rf *.backup
	rm -f `ls $(FILENAME).* | grep -v .tex | grep -v .pdf`
	echo "Cleaning complete!"



