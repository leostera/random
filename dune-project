(lang dune 3.14)

(name random)

(generate_opam_files true)

(source
 (github leostera/random))

(authors "Leandro Ostera <leandro@abstractmachines.dev>")

(maintainers "Leandro Ostera <leandro@abstractmachines.dev>")

(license MIT)

(package
 (name random)
 (synopsis "Easy to use, cryptographically safe random data.")
 (depends 
  (randomconv (>= "0.1.3"))
  (mirage-crypto (>= "0.11.2"))
  (mirage-crypto-rng (>= "0.11.2"))
  ocaml dune)
 (tags
  (random "random data")))
