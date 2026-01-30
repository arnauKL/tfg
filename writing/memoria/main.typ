#set page(
  paper: "a4",
  margin: (x: 3.5cm, y: 3cm), // Generous margins for "prestige"
  numbering: "1",
)

#set text(
  font: "Linux Libertine", // Sophisticated alternative to Times
  size: 11pt, // 11pt is often more readable than 12pt
  lang: "en",
)

// Configure Headings
#show heading: set text(font: "Inter", weight: "bold")
#show heading.where(level: 1): set text(size: 1.4em)
#show heading.where(level: 2): set text(size: 1.2em, fill: gray.darken(50%))

// Configure Paragraphs
#set par(
  justify: true,
  leading: 0.65em,
  first-line-indent: 0pt,
)

#set par(spacing: 1.5em) // Space between paragraphs

// --- DOCUMENT STARTS HERE ---

= The Impact of Systematic Typography
== A Study in Document Design

This is a demonstration of an academic layout using _Typst_. By using a Sans-Serif font for headings (Inter) and a Serif font for the body (Linux Libertine), we create a high level of *hierarchy*.

The margins are set to 3.5cm. While this might seem wide, it keeps the "measure" (line length) within the optimal range of 65 characters, which prevents eye fatigue during long reading sessions.

- *Constraint:* "Use Arial."
- *Solution:* Use a high-quality Sans-Serif for headers to satisfy the "uniform" look while keeping the body text Serif for long-form reading comfort.

#align(center)[
  #set par(justify: false)
  == Abstract

  #lorem(77)
]

#outline()

== Intro

#lorem(30)

#lorem(44)
