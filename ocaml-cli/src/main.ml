(* Définit la fonction main communiquant avec la ligne de commande *)
let main () =
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

(* Exécute la fonction main *)
let _ = main ()
