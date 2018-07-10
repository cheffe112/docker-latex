#!/bin/bash
# automatically tries to use biber if biblatex fails - this makes both bibtex tools work
docker run -t --rm -v `pwd`:/home -w /home sumdoc/texlive-2017 /bin/bash -c "if ! bibtex $1; then biber $1; fi"
