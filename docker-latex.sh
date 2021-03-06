#!/bin/bash
docker run -t --rm -v "`pwd`":/home -w /home thomasweise/docker-texlive-full /bin/bash -c "pdflatex -shell-escape -synctex=1 -interaction=nonstopmode \"$1.tex\""
words=`pdftotext $1.pdf - -q | tr -d '.' | wc -w`
chars=`pdftotext $1.pdf - -q | tr -d '.' | wc -c`
echo "#words: $words, #characters: $chars"
