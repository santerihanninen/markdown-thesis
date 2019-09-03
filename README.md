# markdown-thesis

A simple setup I used to write my thesis in Markdown and export it to a PDF with Pandoc. The purpose is to be able to use Latex's citation and typography abilities without having to bother with its tedious syntax.

Configuration happens mostly in `build.sh`. The PDF is generated with LuaTeX (`--pdf-engine=lualatex`) to allow the use of non-TeX fonts (e.g. OTF). LaTeX template is extracted to `config/default.latex` for editing.

![alt text](https://i.imgur.com/4T1ydpJ.png "output.pfd ")

## Installation

```
// download latest pandoc release from https://github.com/jgm/pandoc/releases/latest
sudo dpkg -i $DEB // "where $DEB is the path to the downloaded deb. This will install the pandoc and pandoc-citeproc executables and man pages."
sudo apt-get update
sudo apt-get -y install texlive python-pip texlive-luatex
sudo pip install pandoc-latex-fontsize
chmod +x ./build.sh
./build.sh
```

### Usage

Write chapters in `input/02-chapters/` and run `build.sh` to generate `output.pdf` in the root.

Pandoc's Markdown syntax:

```pandoc
<!-- Citations -->

@march1971 [p. 28]

<!-- Figures -->

See figure \ref{graph-wright}.

![Figure title[@march1971, p. 27]\label{graph-wright}](input/figures/march1971p27f1.13.png "Wright house plans")

<!-- Quotes, class is used for pandoc-latex-fontsize-->

<div class="quote">
> Whilst they may look different, they are in fact topologically equivalent.[@march1971, p. 28]
</div>
```
See [Pandoc User's Guide](https://pandoc.org/MANUAL.html).
