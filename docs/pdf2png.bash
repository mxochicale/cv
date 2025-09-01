# PDF2PNG.bash
# Usage:
# bash pdf2png.bash
# 
# References 
# https://superuser.com/questions/185880/how-to-convert-a-pdf-document-to-png

sudo apt-get install -y imagemagick

#download ci-version
wget https://raw.githubusercontent.com/mxochicale/cv/refs/heads/generated-pdfs/cv-two-pages.pdf

#mv cv-two-pages.pdf input.pdf
DENSITY=100 #500
QUALITY=500 #300
convert -background white -alpha remove -alpha off -density ${DENSITY} cv-two-pages.pdf -quality ${QUALITY} cv-page.png
rm *.pdf
