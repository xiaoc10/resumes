TEX = pdflatex
CURRENT = shichao_an_current
PROPOSED = shichao_an_proposed
SOURCEFILE = shichao_an.tex

.PHONY: all clean

all: $(CURRENT).pdf $(PROPOSED).pdf

$(CURRENT).pf: current/$(SOURCEFILE)
	pdflatex -jobname=$(CURRENT) current/$(SOURCEFILE)

$(PROPOSED).pdf: proposed/$(SOURCEFILE)
	pdflatex -jobname=$(PROPOSED) proposed/$(SOURCEFILE)

clean:
	rm *.log *.aux *.out
