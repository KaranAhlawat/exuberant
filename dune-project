(lang dune 3.16)

(using melange 0.1)

(name exuberant)

(generate_opam_files true)

(authors "Karan Ahlawat")

(maintainers "Karan Ahlawat")

(license MIT)

(package
 (allow_empty)
 (name exuberant)
 (synopsis "A short synopsis of exuberant")
 (description "A longer description of exuberant")
 (depends ocaml dune reason-react melange reason-react-ppx mlx))

(dialect
 (name mlx)
 (implementation
  (extension mlx)
  (merlin_reader mlx)
  (format
   (run ocamlformat-mlx %{input-file}))
  (preprocess
   (run mlx-pp %{input-file}))))
