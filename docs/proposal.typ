// Final project proposal.
//
// Content follows background/final_proposal.md:
//   - Roughly 1 page; bulleted responses are fine if each subject is
//     clearly addressed
//
// Formatting matches final.typ (Times New Roman, 12 pt, 1 in margins,
// APA 7th citations from final.bib), except single-spaced to fit one page.
//
// Build: make pdf

// ---------------------------------------------------------------------------
// Document details: fill these in.
// ---------------------------------------------------------------------------

#let project-title = [Project Title]
#let client-name = [Client Name]
#let author-name = [Your Name or Consultancy Name]
#let report-date = datetime.today().display("[month repr:long] [day], [year]")

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

// Highlighted placeholder text; search for "todo(" before submitting.
#let todo(body) = highlight(fill: yellow.lighten(60%))[#body]

// ---------------------------------------------------------------------------
// Page and text formatting
// ---------------------------------------------------------------------------

#set document(title: project-title, author: "Kimberly")
#set page(paper: "us-letter", margin: 1in, numbering: "1")
#set text(font: "Times New Roman", size: 12pt)
#set par(leading: 0.65em, spacing: 0.8em, justify: false)

#show heading: set text(size: 12pt, weight: "bold")
#show heading: set block(above: 1.1em, below: 0.6em)

#set list(indent: 0.25in)
#set enum(indent: 0.25in)

// ---------------------------------------------------------------------------
// Title block
// ---------------------------------------------------------------------------

#align(center)[
  #text(size: 14pt, weight: "bold", project-title) \
  Final Project Proposal \
  #author-name · #report-date
]

// ---------------------------------------------------------------------------
// Proposal
// ---------------------------------------------------------------------------

= Track

Consultancy

= Client, Decision Need, and Key Questions

// Consultancy: client, decision need, and key questions.

- *Client:* #client-name, #todo[who they are and what they do.]
- *Decision need:* #todo[the decision this analysis supports.]
- *Key questions:*
  + #todo[Question 1]
  + #todo[Question 2]

= Study Area and Time Frame

// The analysis must be spatially and temporally defined.

- *Study area:* #todo[location and extent.]
- *Time frame:* #todo[imagery dates or seasons.]

= Data Sources

// Sensors of interest and how you will access them. At least one imagery
// dataset must be self-acquired (not a lab dataset).

- #todo[Imagery: sensor, resolution, dates, and access (e.g. USGS
    EarthExplorer).]
- #todo[Imagery: second sensor or time series, and access.]
- *Reference and validation data:* #todo[datasets used to train or check
    results.]

= Planned Methods

// At least three of the Analysis Requirements methods, and the role of R and
// ArcGIS Pro (each must contribute substantively).

+ #todo[Method 1 and what it answers.]
+ #todo[Method 2 and what it answers.]
+ #todo[Method 3 and what it answers.]

- *R:* #todo[tasks done in R.]
- *ArcGIS Pro:* #todo[tasks done in ArcGIS Pro.]

= Expected Results and Deliverables

- #todo[Expected results.]
- #todo[Deliverables: report, maps, data products, R scripts.]

// ---------------------------------------------------------------------------
// References (optional): uncomment both lines once the text cites a source
// with @key, e.g. @verhille2016.
// ---------------------------------------------------------------------------

// #set par(hanging-indent: 0.5in)
// #bibliography("final.bib", title: "References", style: "apa")
