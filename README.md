# LNCC LaTeX Template

LaTeX Template for creation of thesis and dissertations for LNCC.

## Build

To build `tese_lncc.pdf`, type in a terminal:

`$ make`

You can use any editor to edit tex files. In **sublime** you can `Ctrl+B` any moment to start the build.

The build will be done in a random temporary directory in `/tmp`. After a successfull build, the output pdf is copied to project directory, letting the source tree clean, without auxiliary temporary files.

## Directory Structure

```
  +-tese_lncc.tex         main tex file
  +-bibliography.bib      citation file
  +-Makefile              build recipe
  +-abntex2lncc.sty       lncc custom styles used by main tex file
  +-tex
      +-*.tex             files with tex extension included by tese_lncc.tex
  +-fig
  	  +-*.png, *.jpg,     graphics files included by tese_lncc.tex
```

The build directory structure will be flat, and maked by symbolic linkage, so include images or other tex files without subdirectories. Ex.:

 * ~~`\include{tex/capitulo2}`~~ wrong
 * `\include{capitulo2}` correct

 * ~~`\includegraphics[width=\textwidth]{fig/figA.jpg}`~~ wrong
 * `\includegraphics[width=\textwidth]{figA.jpg}` correct
