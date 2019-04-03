.PHONY: all clear

doc_name = tese_lncc
TEX = pdflatex -interaction=nonstopmode
BIB = "bibtex"
pwd := $(shell pwd)
build_dir := $(shell mktemp -d)

all:	clear
	@echo "Building at" $(build_dir)
	# mirror the src dir at temp build dir
	( find $(pwd) -name "tex/*" -type f -exec ln -s {} $(build_dir) \;)
	( find $(pwd) -name "fig/*" -type f -exec ln -s {} $(build_dir) \;)
	( find $(pwd) -name "*" -type f -exec ln -s {} $(build_dir) \;)
	# build at temp build dir
	-( cd $(build_dir) && $(TEX) -draftmode $(doc_name).tex )
	-( cd $(build_dir) && $(BIB) $(doc_name).aux )	
	-( cd $(build_dir) && $(TEX) -draftmode $(doc_name).tex )
	-( cd $(build_dir) && $(TEX) $(doc_name).tex )
	# copy the output to here
	-( cd $(build_dir) && cp -f $(doc_name).pdf $(pwd) )

clear:
	@echo "Clearing output pdf"
	-( rm -f "$(pwd)/$(doc_name).pdf" )
	
