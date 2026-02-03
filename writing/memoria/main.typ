#set page(
  paper: "a4",
  margin: (x: 3.5cm, y: 3cm),
  numbering: "1",
)

#set text(
  font: "Linux Libertine", // Sophisticated alternative to Times
  size: 11pt, // 11pt is often more readable than 12pt
  lang: "en",
)

// Configure Paragraphs
#set par(
  justify: true,
  leading: 0.65em,
  first-line-indent: 0pt,
  spacing: 1.5em,
)

// Configure Headings
#show heading: set text(font: "Inter", weight: "bold")
#show heading.where(level: 1): set text(size: 1.2em, fill: gray.darken(50%))
#show heading.where(level: 1): set par(justify: false)

// Requirement, "Eq" is optional but recommended
#set math.equation(numbering: "(Eq. 1)", number-align: bottom)

// Recommended but not required
#set bibliography(style: "vancouver")

#set figure(caption: [text(size: .8em)[]])

#let appendix(body) = {
  set heading(numbering: "A", supplement: [Appendix])
  counter(heading).update(0)
  body
}

// --- Title page ---

#page(margin: 5cm, numbering: none)[
  #set par(justify: false)

  #align(center)[
    #text(2em)[*Deep Learning-Based Classification of Parkinson's Disease Stages Using DaTSCAN* ]
  ]

  #place(bottom + right)[
    #align(right)[
      Tutor: Adrià Casamitjana

      Student: Arnau K. Deprez Santamaria
    ]
  ]
]

#pagebreak()

// --- Acknowledgements ---

#align(right)[

  #place(horizon + right)[
    #set par(justify: false)
    #text(size: 2em)[ *Acknowledgements* ]

    #lorem(20)

    #lorem(50)

    #lorem(30)
  ]
]

#pagebreak()

// --- DOCUMENT STARTS HERE ---



#outline()
// #outline(target: heading.where(supplement: [Appendix]), title: [Appendix])



= Introduction
// = Conceptes previs
// = State of the art
// = Hipòtesis i objectius
// = Materials i mètodes
// = Results
// = Discussió
// = Conclusions
// - Referències.
// - Annex A. Planificació
// - Annex B. Codi
// - Annex C. Pressupost
// - Annex D. Comitè d'Ètica


// Per començar la secció d'apèndixs
// #show: appendix
// - Annex A. Planificació
// - Annex B. Codi
// - Annex C. Pressupost
// - Annex D. Comitè d'Ètica

// = Tables and Data <app1>
// = Additional Listings <app2>
