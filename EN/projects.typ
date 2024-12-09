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
#let projects = (
  project(
    "https://github.com/Maxito7/risky",
    "Risky (private repo)",
    "Rust"
  )[
    Risk management software designed to be used in organizations of the Peruvian State. Project developed for thesis. (WIP)
  ],
  project(
      "https://github.com/Maxito7/ingesoft_matriculas",
      "University Enrollment Management System (private repo)",
      "Go"
    )[
    Fullstack university enrollment management system developed for an university project. Backend developed exclusively in Go using libraries such as sqlx and Echo. (WIP)
  ],
  project(
    "https://github.com/Maxito7/qualcosa",
    "Qualcosa",
    "Rust"
  )[
    Library made to provide file hex dumps using purely Rust. (WIP)
  ],
  project(
    "https://github.com/Maxito7/Qbo",
    "Qbo",
    "Rust"
  )[
    TUI app made to improve the DX of ethical hackers by providing a more organized and modular way to implement their own exploits, akin to msfconsole. (WIP)
  ]
)
