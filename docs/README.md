# Documents

## pdf2png
```bash
cd $HOME/repositories/cv/docs
bash pdf2png.bash
```

## combine CV with any other PDF doc
```bash
mkdir -p ~/Downloads/tempcv && cd ~/Downloads/tempcv
#download cv
wget https://github.com/mxochicale/cv/raw/generated-pdfs/cv-two-pages.pdf
#sudo snap install pdftk
#download doc.pdf
pdftk doc.pdf cv-two-pages.pdf cat output clcvMX.pdf
```


