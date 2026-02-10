#let license_note = {
  grid(
    columns: (auto, 1fr),
    gutter: 10pt,
    image("images/by.svg", width: 80pt),
    text(size: 8pt)[
      This work is licensed under a Creative Commons Attribution 4.0 International License.
      Copyright © 2026 Arnau K. Deprez Santamaria.
    ],
  )
}


#let tfg_template_ak(
  title: [Untitled],
  short_title: [#title],
  thx: [],
  abstract: none,
  body,
) = {
  // Metadata
  set document(title: title)

  set page(
    paper: "a4",
    margin: (x: 4cm, y: 3cm),
  )

  set text(
    font: "Linux Libertine", // Kinda like Times
    size: 11pt,
    lang: "en",
  )

  set par(
    justify: true,
    leading: 0.65em,
    first-line-indent: 0pt,
    spacing: 1.5em,
  )

  // Configure Headings
  show heading: set text(font: "Inter", weight: "bold")
  show heading.where(level: 1): set text(size: 1.2em, fill: gray.darken(50%))
  show heading.where(level: 1): set par(justify: false)

  // Requirement; "Eq" is optional but recommended
  set math.equation(numbering: "(Eq. 1)", number-align: bottom)

  // Recommended but not required
  set bibliography(style: "vancouver")

  // A requirement but this is not the way
  //set figure(caption: [text(size: .8em)[]])

  // ---------------------- title page ----------------------
  set par(justify: false)

  align(center)[
    #text(2em)[*#std.title()*]
  ]

  place(bottom + right)[
    #align(right)[
      Tutor: Adrià Casamitjana

      Student: Arnau K. Deprez Santamaria
    ]
  ]

  pagebreak()

  // ---------------------- acknowledgement ----------------------
  if thx != [] {
    align(right)[
      #place(horizon + right)[
        #set par(justify: false)
        #text(size: 2em)[ *Acknowledgements* ]

        #thx
      ]
    ]
  }
  pagebreak()

  // outline and license note
  outline()

  align(bottom)[#license_note]
  pagebreak()

  // Add footer with pagenum
  set page(
    footer: context [
      #text(.70em, font: "Inter")[
        #v(-2em)
        #line(stroke: .25pt, length: 100%)
        #v(-.5em)
        #short_title
        #h(1fr)
        PAGE
        #counter(page).display("1 OF 1", both: true)
      ]
    ],
  )

  // ---------------------- actual doc ----------------------

  body
}

// Function definitions
#let appendix(body) = {
  set heading(numbering: "Appendix" + "A", supplement: [Appendix])
  counter(heading).update(0)
  body
}

