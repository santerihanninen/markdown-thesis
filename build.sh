#!/bin/bash

pandoc input/*/*.md \
-V papersize:a4 \
-V documentclass:scrreprt \
-V classoption:egregdoesnotlikesansseriftitles \
-V bibliography=openstyle \
-V fontsize:11pt \
-V header-includes:'\setmainfont[Path = config/, BoldFont = ACaslonPro-Semibold.otf, ItalicFont = ACaslonPro-Italic.otf]{ACaslonPro-Regular.otf}' \
-V title:"Title" \
-V subtitle:"Subtitle" \
-V author:"Author" \
--table-of-contents \
-V date:"\today" \
-V linestretch:1.1 \
-V parskip:50pt \
-V hyphenate:true \
-V margin-left=5cm \
-V margin-right=5cm \
-V margin-top=2.5cm \
-V margin-bottom=2.5cm \
-V indent \
--template ./config/default.latex \
--filter pandoc-latex-fontsize \
--metadata link-citations=true \
--bibliography ./input/references.bib \
--filter pandoc-citeproc \
--csl ./config/chicago-note-bibliography.csl \
--pdf-engine=lualatex \
-o ./output.pdf
