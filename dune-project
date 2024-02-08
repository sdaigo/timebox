(lang dune 3.13)

(name timebox)

(generate_opam_files true)

(source
 (github sdaigo/timebox))

(authors "Daigo Shitara <stain.witness@gmail.com>")

(maintainers "Daigo Shitara <stain.witness@gmail.com>")

(license MIT)

(package
 (name timebox)
 (synopsis "A short synopsis")
 (description "A longer description")
 (depends
  (ocaml
   (>= "5.1.1"))
  (minttea
   (>= "0.0.2")))
 (tags
  ("timeboxing" "cli")))
