#!/bin/bash
# Converts filename.md to filename.pdf in MLA format

`pandoc $1.md -o $1.pdf --template=mla-template.tex`
