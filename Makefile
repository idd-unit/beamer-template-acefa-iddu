TEXCC := lualatex
TEX_FLAGS := -interaction=batchmode

TMP_EXTS := aux log nav out snm toc
TMP_FILES := $(foreach EXT,$(TMP_EXTS),$(wildcard *.$(EXT)))

default: example.pdf

example.pdf: example.tex $(wildcard *.sty)
	@$(TEXCC) $(TEX_FLAGS) example
	@$(TEXCC) $(TEX_FLAGS) example

clean:
	@rm -f $(TMP_FILES)

distclean: clean
	@rm -f example.pdf

.PHONY: default clean distclean
