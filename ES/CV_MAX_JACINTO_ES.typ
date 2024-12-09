#import "layout.typ": res-name, contact, EXP, special-color, resume
#import "projects.typ"
#show: resume.with(
  name: "MAX JACINTO",
  contacts: (
    "": "max.jacmes7@gmail.com",
    "": "max.jacinto@pucp.edu.pe",
    "": "Max Jacinto Mestanza",
    "": "Maxito7",
  ),
)
= Educación
#EXP(
  "Pontificia Universidad Católica del Perú",
  "San Miguel, Lima",
  "Br. en Ingeniería Informática - Especialización en Ciberseguridad",
  "Marzo 2020-Presente",
)
#v(-13pt)
Experiencia en cursos relacionados a ciberseguridad:
  - Sistemas Operativos, Redes de Computadoras, Seguridad de la Información, Hacking Ético & Criptografía, Informática Forense, Gobierno de TI, Auditoría de Sistemas y TI, y Gestión de Riesgos. Experiencia con NIST CSF 2.0 e ISO 27001/27002/37000.
= Experiencia
#include "experience.typ"
#let languages = ("Rust", "Go", "C", "C++", "Bash", "Python")
#columns(2)[
  = Proyectos
  #projects.projects.filter(arg2 => projects.is_desired_project(
    languages,
    arg2,
  )).map(projects.project_to_text).join()
  #colbreak()
  = Habilidades
  #include "skills.typ"
]
