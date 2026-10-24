// Final project: consultancy deliverable.
//
// Formatting follows background/final_requirements.md:
//   - Times New Roman, 12 pt, double-spaced
//   - At least 8 pages, excluding references, figures, tables, cover page,
//     and appendices
//   - In-text figure and table captions
//   - Consistent citation formatting (APA 7th, from final.bib)
//
// Build: typst compile final.typ

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

// Shaded box for key takeaways a busy decision-maker should not miss.
#let callout(title: none, body) = block(
  width: 100%,
  inset: 10pt,
  radius: 3pt,
  fill: luma(240),
  stroke: (left: 3pt + luma(120)),
  breakable: false,
)[
  #set par(leading: 0.65em, first-line-indent: 0pt, spacing: 0.8em)
  #set list(indent: 0pt)
  #set enum(indent: 0pt)
  #if title != none [*#title* \ ]
  #body
]

// Gray stand-in for a map or chart that has not been made yet.
#let placeholder(height: 3in, label) = rect(
  width: 100%,
  height: height,
  fill: luma(230),
  stroke: luma(160),
)[#align(center + horizon, text(fill: luma(90), label))]

// ---------------------------------------------------------------------------
// Page and text formatting
// ---------------------------------------------------------------------------

#set document(title: project-title, author: "Kimberly")
#set page(paper: "us-letter", margin: 1in)

// Double spacing: make each line box exactly 1em tall, then add 1em of
// leading so baselines sit 2em (24 pt) apart.
#set text(
  font: "Times New Roman",
  size: 12pt,
  top-edge: 0.8em,
  bottom-edge: -0.2em,
)
#set par(
  leading: 1em,
  spacing: 1em,
  // APA style indents every paragraph, including the first after a heading.
  first-line-indent: (amount: 0.5in, all: true),
  justify: false,
)

#set heading(numbering: "1.")
#show heading: set text(size: 12pt, weight: "bold")
#show heading: set block(above: 1.5em, below: 1em)
#show heading.where(level: 1): set text(size: 14pt)

// Single-space figure contents and captions; table captions go above tables.
#show figure: set par(leading: 0.65em, first-line-indent: 0pt)
#show figure.where(kind: table): set figure.caption(position: top)
#show figure.caption: set align(left)
#set table(stroke: 0.5pt, inset: 6pt)

#set list(indent: 0.5in)
#set enum(indent: 0.5in)

// ---------------------------------------------------------------------------
// Cover page (not counted toward length)
// ---------------------------------------------------------------------------

#page(numbering: none)[
  #set par(first-line-indent: 0pt)
  #align(center + horizon)[
    #text(size: 20pt, weight: "bold", project-title)

    #v(2em)
    Prepared for \
    #text(size: 14pt, client-name)

    #v(2em)
    Prepared by \
    #text(size: 14pt, author-name)

    #v(2em)
    #report-date
  ]
]

#set page(numbering: "1")
#counter(page).update(1)

// ---------------------------------------------------------------------------
// 1. Executive Summary (1 page)
// ---------------------------------------------------------------------------

= Executive Summary

// Written for a non-technical decision-maker. A reader should be able to
// stop here and still act. Keep to one page.

#todo[State the problem the client faces.]

#todo[Summarize what you did, in plain language.]

#callout(title: "Key findings")[
  - #todo[Finding 1]
  - #todo[Finding 2]
  - #todo[Finding 3]
]

#callout(title: "Top recommendations")[
  + #todo[Recommendation 1]
  + #todo[Recommendation 2]
]

#pagebreak()

// ---------------------------------------------------------------------------
// 2. Client Context and Project Objectives
// ---------------------------------------------------------------------------

= Client Context and Project Objectives

// Describe the client, the decision or problem they face, and the specific
// questions the analysis answers. If the client is fictional, make the
// scenario realistic and clearly described.

#todo[Describe the client and the decision they face.]

== Key Questions

+ #todo[Question 1]
+ #todo[Question 2]

== Scope of Work

// Define the scope of work and the project's boundaries.

#todo[What is in scope, and what is explicitly out of scope.]

// ---------------------------------------------------------------------------
// 3. Data and Approach
// ---------------------------------------------------------------------------

= Data and Approach

// Plain language: why this imagery and approach suit the client's needs.

== Study Area

// The analysis must be spatially and temporally defined.

#todo[Location, extent, and time frame.]

#figure(
  placeholder[Study area map],
  caption: [#todo[Study area map. Every map needs a title, scale, north arrow,
      and legend.]],
) <fig-study-area>

== Data

// At least one imagery dataset must be self-acquired (not a lab dataset).
// Remote sensing imagery should remain the analytical center.

#figure(
  table(
    columns: (auto, auto, auto, auto, auto),
    align: left,
    table.header[*Dataset*][*Sensor / source*][*Resolution*][*Dates*][*Access*],
    [#todo[Imagery]], [], [], [], [],
    [#todo[Supporting data]], [], [], [], [],
  ),
  caption: [Data sources used in this analysis.],
) <tbl-data>

== Approach

// Describe cost, access, update frequency, and feasibility of repeating the
// analysis in the future where relevant. Detailed methods go in the
// Technical Appendix.

#todo[Plain-language overview of the analysis.]

#todo[Cost, access, update frequency, and repeatability.]

// ---------------------------------------------------------------------------
// 4. Findings
// ---------------------------------------------------------------------------

= Findings

// Maps, charts, and tables with captions that stand on their own. Highlight
// what matters most to the client's decision. Report accuracy and confidence
// in terms the client can interpret.

#todo[Finding 1, with reference to @fig-finding-1.]

#figure(
  placeholder[Finding 1 map or chart],
  caption: [#todo[A caption that stands on its own.]],
) <fig-finding-1>

#todo[Accuracy and confidence, in terms the client can interpret.]

// ---------------------------------------------------------------------------
// 5. Recommendations
// ---------------------------------------------------------------------------

= Recommendations

// Specific, prioritized, actionable, and tied to findings. Include options,
// tradeoffs, and next steps (monitoring plans, targeted field verification,
// areas for further study) where appropriate.

+ *#todo[Highest-priority recommendation.]* #todo[Supporting evidence and
    tradeoffs.]
+ *#todo[Second recommendation.]* #todo[Supporting evidence and tradeoffs.]

== Next Steps

#todo[Monitoring plan, field verification, or further study.]

// ---------------------------------------------------------------------------
// 6. Limitations and Risks
// ---------------------------------------------------------------------------

= Limitations and Risks

// State plainly what the analysis cannot support, where uncertainty is
// highest, and how that should affect the client's use of the results.

#todo[What the analysis cannot support.]

#todo[Where uncertainty is highest, and how that affects use of the results.]

// ---------------------------------------------------------------------------
// References (not counted toward length)
// ---------------------------------------------------------------------------

#pagebreak()
#set par(first-line-indent: 0pt, hanging-indent: 0.5in)
#bibliography("final.bib", title: "References", style: "apa", full: true)

// ---------------------------------------------------------------------------
// 7. Technical Appendix (not counted toward length)
// ---------------------------------------------------------------------------

#pagebreak()
#set par(first-line-indent: (amount: 0.5in, all: true), hanging-indent: 0pt)
#counter(heading).update(0)
#set heading(numbering: "A.1.")

= Technical Appendix

// For a technical reviewer: full workflow, processing parameters, accuracy
// assessment, and how R and ArcGIS Pro were used. R code is submitted as a
// separate document.

== Workflow

#todo[End-to-end workflow, from data acquisition to final products.]

== Analysis Methods

// At least three methods, applied meaningfully to the question.

#todo[Method 1, e.g. water index (NDWI / MNDWI).]

#todo[Method 2.]

#todo[Method 3.]

== Processing Parameters

#todo[Preprocessing, thresholds, classification parameters, etc.]

== Accuracy Assessment

#todo[Validation data, confusion matrix, overall accuracy, kappa, etc.]

== Use of R and ArcGIS Pro

// Explain and justify which tasks were done in each program and why. Both
// must contribute substantively; one tool used only for a final map is not
// sufficient.

=== R

#todo[Tasks done in R and why. Reference the submitted R script(s).]

=== ArcGIS Pro

// Be specific about the tools used.

#todo[Workflow in ArcGIS Pro, naming each geoprocessing tool used.]
