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
= Education
#EXP(
  "Pontifical Catholic University of Peru",
  "San Miguel, Lima",
  "B.S Software Engineering - Specialization in Cybersecurity",
  "March 2020-Present",
)
#v(-13pt)
Experience in courses related to cybersecurity:
  - Operating Systems, Computer Networks, Information Security, Ethical Hacking & Cryptography, Computer Forensics, IT Governance, IT & Systems Auditing and Risk Management. Experience with NIST CSF 2.0 and ISO 27001/27002/31000.
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
