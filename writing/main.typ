#import "tfg_template_ak.typ": *

#show: tfg_template_ak.with(
  title: [Deep Learning-Based Classification \ of Parkinson's Disease Stages \ Using
    DaTSCAN],
  short_title: [DL Classification of Parkinson's Stages (DaTSCAN)],
  thx: [#include "aknowledgements.typ"],
)

// Project structure:
// https://sitandr.github.io/typst-examples-book/book/basics/must_know/project_struct.html

// ----------------- Document -----------------

= Introduction

#lorem(30)

#lorem(40)

#lorem(10)

#lorem(90)

= Conceptes previs

#lorem(14)

#lorem(37)

#lorem(30)

== Parkinson's Disease

#lorem(14)

=== A third level

#lorem(37)

I have the higher ground. #lorem(37)

=== Another 3rd level
#lorem(37)

#lorem(30)

I never use this many levels anyway. #lorem(41)

== DaTSCAN

#lorem(24)

#lorem(17)

#lorem(70)

= State of the art

#lorem(37)

#lorem(20)

#lorem(40)

#lorem(15)

= Now some code

Hehe here goes #lorem(49)

== Testing

My super groundbreaking program

#figure(
  ```c
  #include <stdio.h>

  int
  main(int argc, char *argv[]) {
    printf("Hello world!n");
    return EXIT_SUCCESS;
  }
  ```,
  caption: [Test],
)

#lorem(28)


#pagebreak()

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
#show: appendix
= Budget
= Code

This project has been version controlled since I started it and its hosted on GitHub. It can be found
at #link("https://github.com/arnauKL/tfg")[`arnauKL/tfg`].
// - Annex A. Planificació
// - Annex B. Codi
// - Annex C. Pressupost
// - Annex D. Comitè d'Ètica

// = Tables and Data <app1>
// = Additional Listings <app2>


#pagebreak()
*Colophon*

This thesis was typeset in #link("https://typst.app")[typst] using a custom template inspired by the
principles in the book #link("https://practicaltypography.com")[Practical Typography by Matthew Butterick]. The body text is set in
Linux Libertine and code listings in Caskaydia Cove.
