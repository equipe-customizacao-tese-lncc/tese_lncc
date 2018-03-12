# LaTeX Template for creation of thesis and dissertations for LNCC.

## Build

To build `tese_lncc.pdf`, type in a terminal:

`$ make`

You can use any editor to edit tex files. In **sublime** you can `Ctrl+B` any moment to start the build.

The build will be done in a random temporary directory in `/tmp`. After a successfull build, the output pdf is copied to project directory, letting the source tree clean, without auxiliary temporary files.

## Directory Structure

  * tese_lncc.tex
  * bibliography.bib
  * Makefile
  * abntex2lncc.sty
  * tex
      * files with tex extension included by `tese_lncc.tex`
  * fig
  	  * graphics files included by `tese_lncc.tex`

