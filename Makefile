base_dir=$(shell pwd)

.PHONY: clean all

all: $(base_dir)/build/cv.pdf

ENV = env \
	TEXINPUTS="$(TEXINPUTS):$(base_dir)/src/tex" \
	BIBINPUTS="$(BIBINPUTS):$(base_dir)/src/bib"

$(base_dir)/build/%.pdf: $(base_dir)/src/%.yaml $(base_dir)/src/templates/cv.tex $(base_dir)/src/bib/schuyler.bib | $(base_dir)/build
	$(ENV) pandoc --from=markdown --pdf-engine=latexmk --pdf-engine-opt=-lualatex --pdf-engine-opt=-output-directory=$(dir $@) --template=$(base_dir)/src/templates/cv.tex --metadata-file=$< /dev/null -o $@
	pgrep mupdf | xargs -n1 kill -s SIGHUP 2>&1 > /dev/null

$(base_dir)/build:
	mkdir $@

clean:
	rm -rf $(base_dir)/build
