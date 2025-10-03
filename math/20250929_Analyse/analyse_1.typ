#import "@preview/datify:1.0.0": *

#let mido(
  topic: none,
  title: none,
  author: "Poppy RAVEZ",
  class: [Licence MIDO - 1#super[re] année],
  date: custom-date-format(datetime.today(), pattern:"long", lang: "fr"),
  doc
) = {
  set page( paper: "a4")
  set align(center)

  image("MIDO_centre_20.png", width: 60%)
  
  text(size:18pt, weight: "bold")[
    #topic

  ]
  text(size:24pt, weight: "bold")[
    #title
  ]
  set align(center)

  text(size:12pt, weight: "bold")[
    #v(300pt)
    #author
  
    #class

  ]
  text(size:12pt)[
    #date
  ]

  show heading.where(level: 1): h1 => {
    pagebreak()
    set align(center)
    h1
    v(40pt)
  }

  show heading.where(level: 2): h2 => {
    v(30pt)
    h2
  }

  set align(left)
  doc
}

#show: mido.with(
  topic: "Mathématique",
  title: "Analyse 1",
  author: "Poppy RAVEZ"
)

#include "analyse_1.1.typ"
#include "analyse_1.2.typ"
#include "analyse_1.3.typ"
#include "analyse_1.4.typ"
                                              