#import "layout.typ": res-name, contact, EXP, special-color, resume
#import "projects.typ"
#show: resume.with(
  name: "MAX JACINTO",
  contacts: (
    "": "max.jacmes7@gmail.com",
    "": "max.jacinto@pucp.edu.pe",
    "": link("https://www.linkedin.com/in/max-jacinto-mestanza-a39969303/")[Max Jacinto Mestanza],
    "": link("https://github.com/Maxito7")[lucky.dev],
    "": "+51 950 824 744",
  ),
)
#set text(font: ("IBM Plex Serif", "Lilex Nerd Font"), size: 11pt)
= Education
#EXP(
  "Pontifical Catholic University of Peru",
  "San Miguel, Lima",
  "B.S Software Engineering - Cybersecurity Specialization",
  "March 2020-Present",
)
#v(-13pt)
Experience in courses related to cybersecurity:
  - Operating Systems, Networks, Information Security, Ethical Hacking & Cryptography (PUCP Master's), Computer Forensics (PUCP Master's), IT Governance, IT & Systems Auditing and Risk Management. Knowledge in COBIT 6 for Information Security, OCEG Red Book, NIST CSF 2.0 and ISO 27001/27002/31000.
#v(10pt)
= Experience
#include "experience.typ"
#let languages = ("Rust", "Go", "C", "C++", "Bash", "Python")
#columns(2)[
  = projects
  #projects.projects.filter(arg2 => projects.is_desired_project(
    languages,
    arg2,
  )).map(projects.project_to_text).join()
  #colbreak()
  = Skills
  #include "skills.typ"
]
