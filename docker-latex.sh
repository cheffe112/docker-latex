#!/bin/bash
docker run -t --rm -v `pwd`:/home -w /home sumdoc/texlive-2018 /bin/bash -c "pdflatex -shell-escape -synctex=1 -interaction=nonstopmode $1.tex"
