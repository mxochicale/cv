# PDF2PNG.bash
# Usage:
# bash pdf2png.bash
# 
# References 
# https://superuser.com/questions/185880/how-to-convert-a-pdf-document-to-png

#wget https://github.com/mxochicale/cv/raw/generated-pdfs/cv-two-pages.pdf
cp ../tex/cv-two-pages.pdf .

mv cv-two-pages.pdf input.pdf
DENSITY=100 #500
QUALITY=500 #300
convert -background white -alpha remove -alpha off -density ${DENSITY} input.pdf -quality ${QUALITY} page.png
rm *.pdf
