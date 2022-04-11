fileinfo := LaTeX Makefile
author := Miguel Xochicale
## Usage
# run "make" in the terminal to build local pdf
# run "make view" to see pdf file
# run "make clean" when you finished your local changes

## References
# https://gist.github.com/dogukancagatay/2eb82b0233829067aca6
# https://www.latex4technics.com/?note=5fu0y6
# https://www.drewsilcock.co.uk/using-make-and-latexmk

## Tools
LATEXMK = latexmk
RM = rm -f
EVINCE = evince

##Project name
PROJNAMENP=cv-n-pages
PROJNAMETP=cv-two-pages

## Rules
TwoPages: $(PROJNAMETP).tex
	$(LATEXMK) -pdf -pdflatex="pdflatex -synctex=1 -file-line-error %O %S" $<
	$(EVINCE) $(PROJNAMETP).pdf

NPages: $(PROJNAMENP).tex
	$(LATEXMK) -pdf -pdflatex="pdflatex -synctex=1 -file-line-error %O %S" $<
	$(EVINCE) $(PROJNAMENP).pdf

#view:	

mostlyclean:
	$(LATEXMK) -silent -C

clean: mostlyclean
	$(LATEXMK) -silent -c
	$(RM) main.pdf *.bbl *.run.xml -rf _minted-main *.pyg example.out
