#set heading(numbering: "(I)")
#show heading: set align(center)
#show heading: it => block[
  #emph(it.body)
  #counter(heading).display(it.numbering)
]

= Dragon
With a base health of 15, the dragon is the most
powerful creature.

= Manticore
While less powerful than the dragon, the manticore
gets extra style points
