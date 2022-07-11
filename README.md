Towards a simplistic CV, based on the format of @jappavoo's
[CV](http://www.cs.bu.edu/~jappavoo/Resources/Docs/cv.pdf).

All data associated with the resume resides in a `src/cv.yaml` file.
[`pandoc`](https://pandoc.org/) is then used to populate a LaTeX template with
this information.  All bibliographic information is maintained in a `*.bib` file
with keywords used to indicate where each entry should be automatically
populated.

To build the resume, install `pandoc` and a LaTeX distribution.  Then run
`make`.
