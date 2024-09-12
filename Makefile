MAIN=getraenkeliste
TEXC=pdflatex
OUTDIR=./output
OUTNAME=$(MAIN).pdf

all: $(MAIN)

$(MAIN): $(MAIN).tex
	$(TEXC) $(MAIN).tex
	mkdir -p $(OUTDIR)
	mv $(MAIN).pdf $(OUTDIR)/$(OUTNAME)

clean:
	rm -f *.aux *.log *.out *.toc

.PHONY: clean all
