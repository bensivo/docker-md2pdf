#!/bin/bash

if [ "$#" -ne 2 ]; then 
    echo "Usage $0 <markdown file> <pdf output dest>"
    exit 1
fi

pandoc $1 -o $2 --from markdown --template eisvogel --listings -f markdown-implicit_figures
