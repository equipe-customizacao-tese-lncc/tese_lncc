.PHONY: tempdir all clear

TEX = pdflatex -interaction=nonstopmode -shell-escape
BIB = bibtex

pwd := $(shell pwd)
build_dir := $(shell mktemp -d)
directories = $(shell find . -type d -not -path '*/\.*' -not -path '\.')

all: tese_lncc.pdf

.ONESHELL:
tempdir: $(build_dir)	
	echo "Construindo o diretório temporário $(build_dir)"
	for d in $(directories); do \
		echo $$d; \
		mkdir -p $(build_dir)/$$d ; \
		cd $(build_dir)/$$d
		find $(pwd)/$$d -maxdepth 1 -type f -exec ln -s {} . \; ; \
	done
	cd $(build_dir)
	find $(pwd) -maxdepth 1 -type f -not -path '*/\.*' -exec ln -s {} . \;	

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
