#!/bin/bash

# ---- Latex generator using pdflatex -----
# - Written by Magnus Sörensen -

# Base file is the starting point for the documens with out tex ending i.e main.tex is just main.
# pdfshow is the pdf viewer.
baseFile="tutorial"
pdfshow=zathura
output_directory=/tmp/pdflatex


check_process() {
  echo "$ts: checking $1"
  [ "$1" = "" ]  && return 0
  [ `pgrep -n $1` ] && return 1 || return 0
}

if [ ! -d $output_directory ];
then
    mkdir $output_directory
fi

cp $baseFile.tex $baseFile.bac
if [ -f "$baseFile.tex" ];
then
    echo "Compiling"
    pdflatex -interaction=nonstopmode -output-directory $output_directory $baseFile.tex
    if [[ -f "$output_directory/$baseFile.pdf" ]]; then
        echo "basefile in temp found"
        # if ! [[ -d "../revisions" ]]; then
        #     mkdir ../revisions
        # fi
        # if [[ -f "../$baseFile.pdf" ]]; then
        #     cp "../$baseFile.pdf ../revisions/$(date +'%Y%m%d%H')_$baseFile.pdf"
        # fi
        mv "$output_directory/$baseFile.pdf" .
        echo "Done compiling"
    else
        echo "Commpiling FAIL"
    fi
fi

if [ -f $baseFile.pdf ];
then
    $pdfshow $baseFile.pdf &
fi
