RM = rm -f
BUILD = pdflatex
BUIL_OPTS := -file-line-error -halt-on-error -interaction=nonstopmode -recorder

.PHONY: all build clean show

all: build

build: *.tex
	$(BUILD) $(BUILD_OPTS) $?

clean:
	$(RM) *.iml .DS_Store *.aux *.log *.bcf *.bbl *.fdb_latexmk *.fls *.run.xml *.blg *.pdf
