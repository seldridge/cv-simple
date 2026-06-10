Towards a simplistic CV, based on the format of @jappavoo's
[CV](http://www.cs.bu.edu/~jappavoo/Resources/Docs/cv.pdf).

All data associated with the resume resides in a `src/cv.yaml` file.
This YAML then feeds two different PDF generating flows:

1. a [`pandoc`](https://pandoc.org/) and LaTeX template
2. and a [Typst](https://typst.app/) program.

All bibliographic information is maintained in a `*.bib` file with keywords used
to indicate where each entry should be automatically populated.

To build the resume, install `pandoc`, a LaTeX distribution, and Typst.  Then
run `make`.

This repository uses a non-standard versioning scheme suitable for tracking
employment.  The version consists of a triple of "major", "minor", and "patch"
versions.  The "major" version is incremented after a change in companies.  The
"minor" version is incremented after a change in roles within a company.  The
"patch" version is incremented whenever the resume is changed.  (I started this
versioning scheme after joining SiFive, hence why the versions do not line up
to my number of employers.)

#### Dependencies

``` shell
port install biblatex-biber latexmk pandoc texlive texlive-bibtex-extra texlive-latex-extra texlive-luatex typst
```
