TEX  = resume.tex
PDF  = resume.pdf
DIST = Cristian-Gonzales-Resume.pdf

all: $(PDF)

$(PDF): $(TEX) resume-style.sty res.cls
	latexmk -pdf -interaction=nonstopmode -halt-on-error $(TEX)

watch:
	latexmk -pdf -pvc -interaction=nonstopmode $(TEX)

dist: $(PDF)
	cp $(PDF) $(DIST)

clean:
	latexmk -C
	rm -f resume.log
