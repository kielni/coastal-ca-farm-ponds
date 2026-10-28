// Document details and helpers shared by proposal.typ and final.typ.

// ---------------------------------------------------------------------------
// Document details: fill these in.
// ---------------------------------------------------------------------------

#let project-title = [Coastal California Farm Ponds]
#let client-name = [Anne Kapuscinski, PhD]
#let client-title = [Professor of Environmental Studies, University of California, Santa Cruz]
#let author-name = [Kimberly Nicholls]
#let report-date = datetime.today().display("[month repr:long] [day], [year]")

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

// Highlighted placeholder text; search for "todo(" before submitting.
#let todo(body) = highlight(fill: yellow.lighten(60%))[#body]

// Blue, underlined links so they stand out in the PDF. Apply with
// `#show: style-links`; show rules don't carry across imports.
#let style-links(body) = {
  show link: set text(fill: rgb("#1a4f9c"))
  show link: underline
  body
}

// APA reference list with hanging indents. Lists every entry in final.bib,
// cited or not, so the proposal and final report share one list.
#let references() = {
  set par(first-line-indent: 0pt, hanging-indent: 0.5in)
  bibliography("final.bib", title: "References", style: "apa", full: true)
}
