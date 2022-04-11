# PDF2PNG.bash
# Usage:
# bash pdf2png.bash
# 
# References 
# https://superuser.com/questions/185880/how-to-convert-a-pdf-document-to-png


wget https://github.com/mxochicale/cv/raw/generated-pdfs/cv-two-pages.pdf
#https://github.com/mxochicale/cv/blob/generated-pdfs/cv-two-pages.pdf
mv cv-two-pages.pdf input.pdf
convert -background white -alpha remove -alpha off -density 150 input.pdf -quality 90 output.png
#ALTERNATIVES
#convert cv-two-pages.pdf cv-two-pages.png
#pdftoppm -png input.pdf > myfile.png
rm *.pdf
