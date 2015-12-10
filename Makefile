MAIN_FILE = monografia_api-andre_taiar-saas_didatico
DOCUMENT_VISUALIZATION = evince

all: ${MAIN_FILE}.tex
	pdflatex ${MAIN_FILE}.tex
	bibtex ${MAIN_FILE}.aux
	pdflatex ${MAIN_FILE}.tex
	pdflatex ${MAIN_FILE}.tex

clean:
	rm -f *.log *.aux *.bbl *.blg *.dvi *.pdf *.lot *.toc *.lof *.out *~ 

see: all
	${DOCUMENT_VISUALIZATION} ${MAIN_FILE}.pdf &

run: see