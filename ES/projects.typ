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
    "Risky (repositorio privado)",
    "Rust"
  )[
    Software de gestión de riesgos diseñado para pymes. Proyecto realizado para tesis. (En progreso)
  ],
  project(
      "https://github.com/Maxito7/ingesoft_matriculas",
      "MatrisoftGO - Sistema de Gestión de Matrículas Universitarias",
      "Go"
    )[
    Sistema de gestión de matrículas universitarias fullstack desarrollado para un proyecto universitario. Backend desarrollado en Go usando librerías como `sqlx` y `Echo`. Elegido para la feria XpoSTEM 24-2.
  ],
  project(
    "https://github.com/Maxito7/qualcosa",
    "Qualcosa",
    "Rust"
  )[
    Librería para obtener el hex dump de archivos. (En progreso)
  ],
project(
    "https://github.com/Maxito7/conchiglia",
    "Conchiglia",
    "Rust"
  )[
    Shell desarrollada en Rust como prueba de concepto.
  ],
  /*
  project(
    "https://github.com/Maxito7/Qbo",
    "Qbo",
    "Rust"
  )[
    TUI app hecha para mejorar el DX de hackers éticos usando módulos para implementar sus propios exploits, similar a msfconsole. (En progreso)
  ]
*/
)
