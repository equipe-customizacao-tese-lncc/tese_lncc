# Template LaTeX LNCC

| Platform                               	| Build status 	|
|-----------------------------------------	|--------------	|
| Ubuntu 16.04 LTS and 18.04 LTS 	        |  [![Build Status](https://travis-ci.com/equipe-customizacao-tese-lncc/tese_lncc.svg?branch=master)](https://travis-ci.com/equipe-customizacao-tese-lncc/tese_lncc)            	|

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

## Compilação com Makefile

Para compilar `tese_lncc.pdf`, digite no terminal:

`$ make tese_lncc.pdf`

Qualquer arquivo `.pdf` pode ser construído a partir de seu `.tex`. Por exemplo, se `slides.tex` é uma apresentação beamer, ela pode ser construída com `make slides.pdf`.

A construção será feita em um diretório temporário em `/ tmp`. Após uma construção bem-sucedida, o pdf de saída é copiado para o diretório do projeto, deixando a árvore de origem limpa, sem arquivos temporários auxiliares. Toda a estrutura de diretórios locais será replicada num diretório temporário através de links simbólicos.

## Compilação sem o Makefile padrão

Para gerar `tese_lncc.pdf` sem o Makefile padrão, mude os comandos `\include{...}` para comandos `\texInclude{...}` em `tese_lncc.tex` conforme indicado no próprio arquivo. Esta opção é útil, por exemplo, se você gerar a saída através de um editor LaTeX sem opção para configurar um Makefile externo.

## Contribuições e melhorias

Caso perceba alguma falha ou ponto passível de melhorias, todos são encorajados a contribuir no projeto. Isso pode ser feito de duas maneiras:

* Reportando uma Issue;
* Enviando um Pull Request.

Porém, para termos um ambiente sempre produtivo e amigável, atente para o nosso [Código de Conduta](https://github.com/equipe-customizacao-tese-lncc/tese_lncc/blob/master/CODE_OF_CONDUCT.md).

Além disso, todas as contribuições de Pull Request devem antes passar no teste de Integração Contínua executado em uma 
máquina virtual Ubuntu 16.04 montada no [TravisCI](https://travis-ci.com/). Isso garante que as modificações inseridas não gerem um template corrompido, aumentando a garantia de entrega de um template livre de erros de compilação.

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

## Build with the Makefile

To build `tese_lncc.pdf`, type in a terminal:

`$ make`

Any `.pdf` file can be build from `.tex` file. For example, if `slides.tex` is a beamer presentation, it can be build with `make slides.pdf`.

The build will be done in a random temporary directory in `/tmp`. After a successfull build, the output pdf is copied to project directory, letting the source tree clean, without auxiliary temporary files. All directory structure will be replicated in a temporary directory through symbolic links.

## Build without Makefile

To build `tese_lncc.pdf` without the default Makefile, change the `\include{...}` commands to `\texInclude{...}` commands in `tese_lncc.tex` as indicate in the latter file. This option is useful, for example, if you generate the output through a LaTeX editor with no option to configure an external Makefile.

## Contributions and improvements

If errors/bugs or places that could be improved are spotted, everyone is encouraged to contribute to the project. This can be done in two ways:

* Reporting an Issue;
* Sending a Pull Request.

However, in order to have an always productive and friendly environment, please follow our [Code of Conduct](https://github.com/equipment-customizacao-tese-lncc/tese_lncc/blob/master/CODE_OF_CONDUCT.md).

Moreover, all Pull Requests need to pass in the Continuous Integration test, which is ran on a
Ubuntu 16.04 virtual machine mounted on [TravisCI](https://travis-ci.com/). This ensures that the requested changes do not corrupt the template, increasing the guarantee of to deliver a template free of compilation errors.
