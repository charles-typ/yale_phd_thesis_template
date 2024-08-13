FILE = yale_thesis
PROJECT = thesis

all: 
	pdflatex $(FILE)
	bibtex $(FILE)
	pdflatex $(FILE)
	pdflatex $(FILE)

fast:
	latex $(FILE)
	dvips $(FILE).dvi
	ps2pdf $(FILE).ps
	rm -f $(FILE).aux $(FILE).bbl $(FILE).blg $(FILE).log $(FILE).dvi $(FILE).ps

clean:
	rm -f $(FILE).aux $(FILE).bbl $(FILE).blg $(FILE).log $(FILE).pdf $(FILE).dvi $(FILE).ps $(FILE).out $(FILE).thm $(PROJECT).pdf
