# Building CV

## tex built with texlive
Open terminal and run:
```bash
cd $HOME/repositories/mxochicale/cv/tex
bash localbuilt.sh TwoPages 
bash localbuilt.sh NPages 
```
to clean project, then type:
```bash
make clean
```

## tex built with github action 
To make use of the CI tex build, please make use of "CICV2P" in the commit message: 
```bash
git commit -m ':tada: version monthYEAR is ready CICV2P #0'
```

For further details, please follow this [instructions](https://github.com/free-cortex/framework/tree/main/workflow) to set up github action.

## References 
https://github.com/free-cortex/framework
