(* Définit une première procédure - programme lisant la ligne de commande *)
let main_sumavg () =

  let _, l1, l2 = Parse_cli.get_args () in

  (* s'il y avait un "--" dans les arguments en ligne de commande,
     ignore le découpage fait entre l1 et l2, et recolle le tout *)
  let all = l1 @ l2 in

  (* on suppose qu'aucune exception n'est levée *)
  let list_of_numbers = List.map int_of_string all in

  let sum, avg = Sum_avg.sum_avg list_of_numbers in

  (* prépare le texte à afficher *)
  let text = "sum = " ^ string_of_int sum ^ "\n"
             ^ "avg = " ^ Format.sprintf "%.2f" avg in

  print_endline text

(* Définit une autre procédure - programme lisant/écrivant un CSV *)
let main_csv_demo () =
  let chemin = Libunix.get_example_file "musee.csv" in
  let output = Libunix.get_example_file "musee_output.csv" in
  let csv = Libcsv.load_csv chemin in
  let csv' = Libcsv.map_csv (fun s -> "Super-" ^ s) csv in
  let nl, nc = Libcsv.lines_columns csv' in
  let () = Format.printf "Ecriture d'un CSV de taille (%d x %d) dans: %s\n" nl nc output in
  Libcsv.save_csv output csv'

(* Exécute les procédures précédentes *)

let () = main_sumavg ()

let () = main_csv_demo ()
