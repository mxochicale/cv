# ============================================================================
# LaTeX Makefile (tab-safe version using .RECIPEPREFIX)
# Author: Miguel Xochicale
# ============================================================================

.RECIPEPREFIX := >

# ----------------------------------------------------------------------------
# Tools
# ----------------------------------------------------------------------------
LATEXMK := latexmk
PDFLATEX := pdflatex
VIEWER := evince
RM := rm -rf

# ----------------------------------------------------------------------------
# Project names
# ----------------------------------------------------------------------------
TWO_PAGE := cv-two-pages
N_PAGE := cv-n-pages

# Default target
.DEFAULT_GOAL := two

# ----------------------------------------------------------------------------
# Build flags
# ----------------------------------------------------------------------------
LATEX_FLAGS := -pdf \
               -interaction=nonstopmode \
               -synctex=1 \
               -file-line-error \
               -pdflatex="$(PDFLATEX) %O %S"

# ----------------------------------------------------------------------------
# Targets
# ----------------------------------------------------------------------------

.PHONY: all two npages view clean distclean help

all: two

# Build two-page CV
two: $(TWO_PAGE).tex
> $(LATEXMK) $(LATEX_FLAGS) $<

# Build n-page CV
npages: $(N_PAGE).tex
> $(LATEXMK) $(LATEX_FLAGS) $<

# View two-page PDF
view:
> $(VIEWER) $(TWO_PAGE).pdf >/dev/null 2>&1 &

# View n-page PDF
view-npages:
> $(VIEWER) $(N_PAGE).pdf >/dev/null 2>&1 &

# Clean auxiliary files
clean:
> $(LATEXMK) -c
> $(RM) *.bbl *.run.xml *.bcf *.pyg *.out

# Full cleanup (including PDFs)
distclean: clean
> $(LATEXMK) -C
> $(RM) *.pdf _minted-* 

# Help menu
help:
> @echo "Available targets:"
> @echo "  make        Build default two-page CV"
> @echo "  make two    Build two-page CV"
> @echo "  make npages Build n-page CV"
> @echo "  make view   Open PDF"
> @echo "  make clean  Remove aux files"
> @echo "  make distclean Remove all generated files"