.PHONY: tempdir all clear

TEX = pdflatex -interaction=nonstopmode -shell-escape
BIB = biber

pwd := $(shell pwd)
build_dir := $(shell mktemp -d)

all: tese_lncc.pdf

.ONESHELL:
tempdir: $(build_dir)	
	echo "Construindo o diretório temporário $(build_dir)"
	find $(pwd) -type d -exec ln -s {} $(build_dir) \;
	find $(pwd) -name "*.tex" -type f -exec ln -s {} $(build_dir) \;
	find $(pwd) -name "*.sty" -type f -exec ln -s {} $(build_dir) \;
	find $(pwd) -name "*.bib" -type f -exec ln -s {} $(build_dir) \;
	find $(pwd) -name "*.pdf" -type f -exec ln -s {} $(build_dir) \;

.ONESHELL:
%.pdf : %.tex tempdir
	echo "Compilando $(*F) $< $@"
	cd $(build_dir)
	-rm $@
	$(TEX) -draftmode $<
	$(BIB) $(*F)
	$(TEX) $<
	$(TEX) $<
	cp $@ $(pwd)

clear:
	@echo "Clearing output pdf"
	-( rm -f "$(pwd)/$(doc_name).pdf" )