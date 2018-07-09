#!/bin/bash
docker run -t --rm -v `pwd`:/home -w /home sumdoc/texlive-2018 /bin/bash -c "bibtex $1"
