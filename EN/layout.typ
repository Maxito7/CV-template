#set list(tight: true, marker: "→")
#set page(
  paper: "us-letter",
  margin: (x: auto, y: 30pt),
  footer: align(center)[_References available upon request._],
)
//#set text(font: "JetBrainsMono Nerd Font")
#set text(font: "IBM Plex Serif", size: 11pt)
#set par(
  justify: true,
  leading: 0.52em,
)

#let special-color = rgb("#11ad5a")
//11ad5a
// MY NAME GOES HERE
#let res-name(body) = [
  #set text(font: "IBM Plex Serif", size: 18pt)
  #upper(text(weight: "bold")[#body])
]
// LINKS GO HERE
#let contact(symbol, body) = [
  #set text(size: 10pt)
  #text(special-color)[ / #text(size: 8pt)[#symbol]: *#body*]
]
#let subheading(body) = [
  #text(weight: "bold")[#body]
]
#let EXP(company_or_topic, loc, title, dates) = [
  #table(
    columns: (12fr, auto),
    align: (col, row) => if col == 0 {
      left
    } else {
      right
    },
    row-gutter: 4pt,
    inset: 0pt,
    stroke: none,
    [*#company_or_topic*], [#loc],
    [#(text(style: "normal", size: 11pt)[#title])], [#(text(style: "normal", size: 11pt)[#dates])],
  )[
  ]

]
#let job(task, url, body) = [
  #set text(size: 11pt)
  #v(-21pt)
  #block(inset: 11pt)[
    #subheading()[#task]
    #if url.len() > 0 [
      #link(url)[#text(size: 11pt, special-color)[]]
    ]
    - #body
  ]
]
#let project_subheading(url, name, body) = [
  #subheading(text[#name])
  #text(special-color, link(url)[#text(size: 11pt, special-color)[]])\
  #body\
]
#let skill_set(title, body) = [
  #subheading(title)\
  #body\
]
#let resume(
  name: "Name",
  contacts: ("": "email@gmail.com"),
  body,
) = [
  #show heading.where(level: 1): it => [
    #v(-11pt)
    #set text(font: "IBM Plex Serif", size: 13pt)
    #upper(text(special-color, weight: "bold")[#it.body])
    #v(-12pt)
    #line(length: 100%, stroke: special-color)

  ]
  #show heading.where(level: 2): it => [
    #text(weight: "bold")[#body]
  ]
  #set list(tight: true, marker: "→")
  #set page(
    paper: "us-letter",
    margin: (x: auto, y: 30pt),
    footer: align(center)[_References available upon request._],
  )
  #set text(font: "Lilex Nerd Font Mono")
  #set par(
    justify: true,
    leading: 0.52em,
  )
  #table(
    columns: (290pt, auto),
    align: horizon,
    [#res-name(name)],
    contacts.pairs().map(((a, b)) => contact(a, b)).join(),
    inset: 0pt,
    stroke: none,
  )
  #v(-15pt)
  #text(rgb("#eff"), " ")
  //eff
  #v(-4pt)
  #body
]
