// ----------------------------------------------------
// --------------- function definitions ---------------
// ----------------------------------------------------
#let license_note = {
  grid(
    columns: 1fr,
    gutter: 1em,
    image("images/by.svg", width: 70pt),
    align(horizon)[
      #v(.2em)
      #text(size: 8pt)[
        This work is licensed under a Creative Commons Attribution 4.0
        International License. Copyright © 2026 Arnau K. Deprez Santamaria.
      ]
    ],
  )
}

#let technical_details = {
  set text(size: 8pt)
  grid(
    columns: (auto, 1fr),
    gutter: 1em,
    image("images/by.svg", width: 70pt),
    [
      *License:* \ This work is licensed under a Creative Commons Attribution 4.0
      International License. Copyright © 2026 Arnau K. Deprez Santamaria.

    ],
  )
}

#let appendix(body) = {
  set heading(numbering: "Appendix" + "A", supplement: [Appendix])
  counter(heading).update(0)
  body
}

// ----------------------------------------------------
// --------------------- template ---------------------
// ----------------------------------------------------

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
    size: 12pt,
    lang: "en",
  )

  set par(
    justify: false,
    leading: 0.65em,
    //first-line-indent: 0pt,
    spacing: 1.5em,
  )

  // set heading(numbering: "1.")
  set heading(
    numbering: (..nums) => {
      let values = nums.pos()
      if values.len() == 1 {
        return numbering("1.", ..values)
      } else if values.len() == 2 {
        return numbering("1.a", ..values)
      } else {
        return numbering("1.a.i", ..values)
      }
    },
  )

  // Code blocks
  show raw: set text(font: "CaskaydiaCove NF", size: 9pt)
  show raw: set block(fill: luma(240), inset: 8pt, radius: 4pt)

  // Configure Headings
  show heading: set text(font: "Inter Display", weight: "bold")
  show heading.where(level: 1): set text(size: 1em, fill: gray.darken(50%))
  show heading.where(level: 1): set par(justify: false)

  // Links
  show link: it => {
    if (str(it.dest).contains("http")) {
      // External: Subtle color + small arrow
      set text(fill: rgb("#b8860b")) // Dark Goldenrod
      it
      h(2pt)
      super(size: 0.6em)[↗]
    } else {
      // Internal: Just the text (clean)
      it
    }
  }

  // GEB-specifics

  // Requirement; "Eq" is optional but recommended
  set math.equation(numbering: "(Eq. 1)", number-align: bottom)

  // Recommended but not required
  set bibliography(style: "vancouver")

  // A requirement but this is not the way
  //set figure(caption: [text(size: .8em)[]])

  // ---------------------- title page ----------------------

  // Inspiration taken from: https://typst.app/universe/package/red-agora

  place(top + left)[
    // Not having a publicly available svg for their
    // logo is something only this uni could do.
    #image("images/EPS.png", width: 50%)
  ]

  place(horizon + center, dy: -2cm)[
    #smallcaps()[
      #set text(tracking: 0.06em)
      Final Year Thesis
    ]

    #line(stroke: .3pt + gray, length: 60%)
    #box([#text(
        1.4em,
        font: "Inter",
      )[#title]])
    #line(stroke: .3pt + gray, length: 60%)

    #box(width: 85%)[
      #grid(
        columns: 2,
        column-gutter: 1fr,
        align(left)[#text(size: 0.9em)[*Author*] \ #text(
            size: 1.1em,
          )[Arnau K. Deprez Santamaria]],
        align(right)[#text(size: 0.9em)[*Tutor*] \ #text(
            size: 1.0em,
          )[Adrià Casamitjana]],
      )
    ]
  ]

  place(bottom + center)[
    #show: smallcaps
    #set text(tracking: 0.06em)
    Biomedical Engineering \
    Academic Year: 2025-2026
  ]

  pagebreak()

  // ----------------- acknowledgements -----------------
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

  show outline.entry: it => {
    if it.level == 1 {
      v(0.5em) // Add space before new chapters
      strong(it) // Bold level 1
    } else {
      it
    }
  }
  set outline.entry(fill: "")
  align(center)[
    #box(
      width: 75%,
      outline(),
    )
  ]

  set par(justify: true)

  v(1fr)
  place(bottom)[
    #line(stroke: 0.25pt + gray, length: 100%)
    #technical_details
  ]
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
        #counter(page).display("1")
      ]
    ],
  )

  counter(page).update(1) // Reset page num to 1

  // ----------------- actual doc -----------------

  body
}
