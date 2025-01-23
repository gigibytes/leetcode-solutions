(* i had to peek t the solution for this. i was trying to do a tail recursive thing, this is much simpler. *)
let rec at l n =
  match l with
  | [] -> None
  | hd :: tl -> if n = 0 then Some hd else at tl (n - 1) in

at ["a"; "b"; "c"; "d"; "e"] 3
(* "d")
