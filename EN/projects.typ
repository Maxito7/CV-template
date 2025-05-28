#import "layout.typ": project_subheading
#let project(url, name, language, body) = {
  (
    url: url,
    name: name,
    language: language,
    body: body,
  )
}
#let project_to_text(project) = {
  project_subheading(
    project.url,
    project.name + " (" + project.language + ")",
    project.body,
  )
}
#let is_desired_project(desired_languages, project) = {
  desired_languages.map(upper).contains(upper(project.language))
}
#set text(size: 10pt)
#let projects = (
  project(
    "https://github.com/Maxito7/risky",
    "Risky (private repo)",
    "Rust"
  )[
    Risk management software designed to be used by SMEs. Project developed for bachelor's thesis. (WIP)
  ],
  project(
      "https://github.com/Maxito7/ingesoft_matriculas",
      "University Enrollment Management System (private repo)",
      "Go"
    )[
    Fullstack university enrollment management system developed for an university project. Backend developed exclusively in Go using libraries such as `sqlx` and `echo`. 
  ],
  project(
    "https://github.com/Maxito7/qualcosa",
    "Qualcosa",
    "Rust"
  )[
    Library made to provide file hex dumps using purely Rust. (WIP)
  ],
  project(
    "https://github.com/Maxito7/conchiglia",
    "Conchiglia",
    "Rust"
  )[
    Custom shell developed in Rust as a proof-of-concept and to learn how shells work.
  ],
  /*
  project(
    "https://github.com/Maxito7/Qbo",
    "Qbo",
    "Rust"
  )[
    TUI app made to improve the DX of ethical hackers by providing a more organized and modular way to implement their own exploits, akin to msfconsole. (WIP)
  ]
  */
)
