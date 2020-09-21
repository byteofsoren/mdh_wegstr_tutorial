#!/bin/bash

# ---- Latex generator using pdflatex -----
# - Written by Magnus Sörensen -

# Base file is the starting point for the documens with out tex ending i.e main.tex is just main.
# pdfshow is the pdf viewer.
baseFile="oponent_msn15018"
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
#ps aux | grep $pdfshow > /dev/null
# check_process "$pdfshow"
# if [ ! $? -eq 0 ];
# then
#     echo "$pdfshow is running. Kill ing it."
#     pkill $pdfshow
# fi
cp $baseFile.tex $baseFile.bac
if [ -f $baseFile.tex ];
then
    echo "Compiling"
    # pdflatex -interaction=nonstopmode -output-directory $output_directory $baseFile.tex > "$output_directory/$baseFile.log"
    pdflatex -interaction=nonstopmode -output-directory $output_directory $baseFile.tex
    # cat $output/$baseFile.log
    cp "$output_directory/$baseFile.pdf" .
    echo "Done compiling"
fi
if [ -f $baseFile.pdf ];
then
    $pdfshow $baseFile.pdf &
fi
#rm *.out *.bac *.bac *.aux > /dev/null
