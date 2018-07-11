LaTeX Template Source Reporsitory
=======================

Command lines for building the LaTex CV documents



1. uncomment this lines in `cv.tex` as follows
```
\citepr{MPXochicale_HAI2017,MPXochicale_HRI2017,mxochicale2016_werob,mxochicale2006_ced,mxochicale2016_derdis}
\citenpr{MPXochicale_ECCC2018, MPXochicale_CERE2018}
```

2. make bibtex
```
make bib
```

3. comment cite lines in `cv.tex` as follows

```
%\citepr{MPXochicale_HAI2017,MPXochicale_HRI2017,mxochicale2016_werob,mxochicale2006_ced,mxochicale2016_derdis}
%\citenpr{MPXochicale_ECCC2018, MPXochicale_CERE2018}
```

4. make pdf

```
make pdf
```


5. clean the LaTeX files
```
make clean
```

* LogBook [:link:](https://github.com/mxochicale/cv/blob/master/latex-cv-document/logBOOK.md)


