(* Exemple de fonction(s) utilisant la bibliothèque standard:
   https://v2.ocaml.org/api/Sys.html
   https://v2.ocaml.org/api/Unix.html
   https://v2.ocaml.org/api/Filename.html *)

(* get_example_file: string -> string

   Renvoie le fichier du sous-dossier examples à partir du dossier de main.exe :
   get_example_file "musee.csv" = "./examples/musee.csv" ou bien
   get_example_file "musee.csv" = "../examples/musee.csv" si besoin... *)
let get_example_file name =

  let exe = Sys.executable_name in
  let ( / ) = Filename.concat in
  Filename.dirname exe / "examples" / name
