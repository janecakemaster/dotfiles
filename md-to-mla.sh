#!/bin/bash
# Converts filename.md to filename-response.pdf

`pandoc $1.md -o $1.pdf --template=mla-template.tex`
