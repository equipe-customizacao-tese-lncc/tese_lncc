# Template LaTeX LNCC

Template LaTeX para criação de teses e dissertações do LNCC.

## Estrutura de diretórios

```
  +-tese_lncc.tex         arquivo main
  +-bibliography.bib      arquivo de referencias
  +-Makefile              makefile padrão
  +-abntex2lncc.sty       arquivo com as configurações do pacote abntex2
  +-tex
      +-*.tex             arquivos .tex do usuário
  +-fig
  	  +-*.png, *.jpg,     gráficos e figuras do usuário
```

## Compilação com Makefile padrão

Para compilar `tese_lncc.pdf`, digite no terminal:

`$ make`

Você pode usar qualquer editor para editar arquivos .tex. No **sublime**, por exemplo, você pode usar`Ctrl+B` a qualquer momento para gerar o arquivo final.

A construção será feita em um diretório temporário em `/ tmp`. Após uma construção bem-sucedida, o pdf de saída é copiado para o diretório do projeto, deixando a árvore de origem limpa, sem arquivos temporários auxiliares.

A estrutura de diretórios de compilação será limpa e marcada pela vinculação simbólica, portanto inclua imagens ou outros arquivos .tex sem subdiretórios. Ex.:

 * ~~`\include{tex/capitulo2}`~~ errado
 * `\include{capitulo2}` correto

 * ~~`\includegraphics[width=\textwidth]{fig/figA.jpg}`~~ errado
 * `\includegraphics[width=\textwidth]{figA.jpg}` correto

## Compilação sem o Makefile padrão

Para gerar `tese_lncc.pdf` sem o Makefile padrão, mude os comandos `\include{...}` para comandos `\texInclude{...}` em `tese_lncc.tex` conforme indicado no próprio arquivo. Esta opção é útil, por exemplo, se você gerar a saída através de um editor LaTeX sem opção para configurar um Makefile externo.

---

# LNCC LaTeX Template

LaTeX Template for creation of thesis and dissertations for LNCC.

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

## Build with the Default Makefile

To build `tese_lncc.pdf`, type in a terminal:

`$ make`

You can use any editor to edit tex files. In **sublime**, for example, you can `Ctrl+B` any moment to start the build.

The build will be done in a random temporary directory in `/tmp`. After a successfull build, the output pdf is copied to project directory, letting the source tree clean, without auxiliary temporary files.

The build directory structure will be flat, and maked by symbolic linkage, so include images or other tex files without subdirectories. Ex.:

 * ~~`\include{tex/capitulo2}`~~ wrong
 * `\include{capitulo2}` correct

 * ~~`\includegraphics[width=\textwidth]{fig/figA.jpg}`~~ wrong
 * `\includegraphics[width=\textwidth]{figA.jpg}` correct

## Build without Makefile

To build `tese_lncc.pdf` without the default Makefile, change the `\include{...}` commands to `\texInclude{...}` commands in `tese_lncc.tex` as indicate in the latter file. This option is useful, for example, if you generate the output through a LaTeX editor with no option to configure an external Makefile.
