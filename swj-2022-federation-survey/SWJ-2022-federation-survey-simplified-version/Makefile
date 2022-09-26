DOCUMENT=main

all:
	pdflatex $(DOCUMENT)
	bibtex $(DOCUMENT)
	bibtex art
#	bibtex proc
#	bibtex mis
	bibtex $(DOCUMENT)
	pdflatex $(DOCUMENT)

clean:
	rm -f *.toc *.aux $(DOCUMENT).pdf *.ps *.eps *.log *.lof *.bbl *.blg *.dvi *~ *.bak
