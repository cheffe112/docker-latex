#!/bin/bash
# automatically tries to use biber if biblatex fails - this makes both bibtex tools work
docker run -t --rm -v `pwd`:/home -w /home sumankhanal/texlive-2019 /bin/bash -c "if ! bibtex $1; then biber $1; fi"
