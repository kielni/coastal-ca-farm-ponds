.PHONY: pdf clean

# Build the proposal and the final report.
pdf: docs/proposal.pdf docs/final.pdf

docs/proposal.pdf: docs/proposal.typ docs/details.typ docs/final.bib
	typst compile docs/proposal.typ docs/proposal.pdf

docs/final.pdf: docs/final.typ docs/details.typ docs/final.bib
	typst compile docs/final.typ docs/final.pdf

clean:
	rm -f docs/proposal.pdf docs/final.pdf

# alidade map targets (dump, build, build-all, map, extent, validate,
# publish). Included after `pdf` so `pdf` stays the default goal.
# DIR defaults to the pond_maps project; override with DIR=<dir>.
DIR ?= pond_maps
include $(shell uv run alidade-mkinclude)
