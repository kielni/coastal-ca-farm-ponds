.PHONY: pdf clean

# Build the proposal and the final report.
pdf: docs/proposal.pdf docs/final.pdf

docs/proposal.pdf: docs/proposal.typ docs/final.bib
	typst compile docs/proposal.typ docs/proposal.pdf

docs/final.pdf: docs/final.typ docs/final.bib
	typst compile docs/final.typ docs/final.pdf

clean:
	rm -f docs/proposal.pdf docs/final.pdf
