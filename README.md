# docker-latex

Scripts for using the texlive-2018 Docker image in the LaTeX build chain.

Usage: e.g. in TexStudio, use something like
```
/bin/bash -c "docker-latex.sh %"
```
as your PdfLatex build command and
```
/bin/bash -c "docker-bibtex.sh %"
```
for BibTex.
