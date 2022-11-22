let rec sum l = match l with
  | [] -> 0
  | n :: l -> n + sum l

(* sum_avg: int list -> int * float

   Renvoie la somme et la moyenne arithmétique d'une liste de nombres *)
let sum_avg l =
  let the_sum = sum l in
  let len = List.length l in
  let avg = float_of_int the_sum /. float_of_int len in
  (the_sum, avg)
