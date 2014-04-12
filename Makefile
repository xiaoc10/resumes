TEX = pdflatex
CURRENT = shichao_an
SOURCEFILE = shichao_an.tex

.PHONY: all clean

all: $(CURRENT).pdf

$(CURRENT).pdf: current/$(SOURCEFILE)
	pdflatex -jobname=$(CURRENT) current/$(SOURCEFILE)

clean:
	rm *.log *.aux *.out
