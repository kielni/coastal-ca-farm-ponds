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

// Document details (title, client, author, date) and todo() live in
// details.typ, shared with final.typ.
#import "details.typ": *

// ---------------------------------------------------------------------------
// Page and text formatting
// ---------------------------------------------------------------------------

#set document(title: project-title, author: "Kimberly")
#set page(paper: "us-letter", margin: 1in, numbering: "1")
#set text(font: "Times New Roman", size: 12pt)
#set par(leading: 0.65em, spacing: 0.8em, justify: false)

#show heading: set text(size: 12pt, weight: "bold")
#show heading: set block(above: 1.1em, below: 0.6em)
#show: style-links

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

*Track:* Consultancy

// Consultancy: client, decision need, and key questions.

*Client:* #client-name, #client-title

*Decision need:* Professor Kapuscinski is interested in working with landowners on integrating aquaculture with agriculture. She requested a map of known ponds in the study area, so that she can target outreach to potential participants. Existing datasets including the National Wetlands Inventory and OpenStreetMap include ponds, but are not in an accessible or easy-to-use format for this purpose.

*Key questions:* Where are perennial ponds located, and which have road access for aquaculture operations?

// The analysis must be spatially and temporally defined.

*Study area:* Coastal farm and grazing land south of Half Moon Bay and north of Santa Cruz

*Time frame:* May 2022 (latest NAIP data) through February 2023 (rainy season)

= Data Sources

// Sensors of interest and how you will access them. At least one imagery
// dataset must be self-acquired (not a lab dataset).

- *NAIP* (USDA National Agriculture Imagery Program): 0.6 m, red, green,
  blue, and near-infrared; May 2022 (end of rainy season). https://naip-usdaonline.hub.arcgis.com
- *Sentinel-2* (ESA, Level-2A surface reflectance): 10 m green and
  near-infrared; September 2022 (dry season) and February 2023 (rainy
  season). https://dataspace.copernicus.eu/data-collections/copernicus-sentinel-missions/sentinel-2

*Reference and validation datasets*:

- *Watershed Boundary Dataset*. https://www.usgs.gov/national-hydrography/watershed-boundary-dataset
- *Farmland Mapping and Monitoring Program*, Important Farmland. https://maps.conservation.ca.gov/
- *National Wetlands Inventory*. https://www.fws.gov/program/national-wetlands-inventory
- *OpenStreetMap*. https://download.geofabrik.de/north-america.html


= Planned Methods

- Delineate the eastern border of the study area using the Watershed Boundary Dataset.
- Limit study area to farm and grazing land using Farmland Mapping and Monitoring Program data; dissolve multiple categories to farm and grazing land use types.
- Identify existing mapped ponds from National Wetlands Inventory and OpenStreetMap data.
- Run #link("https://github.com/DPIRD-DMA/OmniWaterMask")[OmniWaterMask] with NAIP data to *classify* water/not water areas. OmniWaterMask is a Python package; it can be run from R via the `reticulate` package.
- Analyze output to distinguish ponds from other water: shrink then grow features and calculate elongation.
- Calculate *Normalized Difference Water Index* (NDWI) on Sentinel-2 *time series* data (rainy season vs dry season) to *classify* ponds as perennial or seasonal.
- Run a proximity analysis to find distance to nearest road for each pond.
- *Visually interpret* results to characterize accuracy and select examples for report.

*Expected results* 

  - Identify farm ponds that are not included in existing datasets.
  - Produce a pond inventory in formats accessible to a broad range of users.

*Deliverables*

  - Report discussing findings, methods, and recommendations.
  - View: PDF overview map with Google Maps links (as in #link("https://github.com/kielni/ucsc-parking")[UCSC Student Parking Map]); interactive web map
  - Analyze: pond feature files in GeoJSON and GeoPackage formats
  - Reproduce: #link("https://github.com/kielni/coastal-ca-farm-ponds")[GitHub repository] with code and instructions

#pagebreak()

*Reviewer notes*

  - What other deliverables might be useful?
  - Is both farmland and grazing land relevant for this project?
  - Is QGIS allowed instead of ArcGIS? I believe using QGIS will improve accessibility (free vs paid license) and reproducibility (runs on multiple platforms, vs Windows-only).

#references()
