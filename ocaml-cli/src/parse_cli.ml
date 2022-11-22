(* Délimiteur standard indiquant la fin des options *)
let end_options = "--"

(* split_args: string list -> string list * string list

   Découpe une liste de chaînes avant/après le délimiteur end_options :
   split_args ["-o"; "file"; "--"; "hello"] = (["-o"; "file"], ["hello"]) *)
let rec split_args l = match l with
  | [] -> ([], [])
  | s :: l -> if s = end_options then ([], l)
              else let l1, l2 = split_args l in
                   s :: l1, l2

(* get_args: unit -> string * string list * string list

   Parse les arguments en ligne de commande et renvoie un tuple :
   ("name-of-program", ["--the"; "--options"], ["the"; "other"; "args"]) *)
let get_args () =
  let all = Array.to_list Sys.argv in
  match all with
  | [] -> failwith "parse_cli"
  | s0 :: l -> let l1, l2 = split_args l in
               (s0, l1, l2)
