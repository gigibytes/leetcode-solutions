let nums = [1; 2; 3; 4; 5]

let rec last l =
  match l with
  | [] -> []
  | [hd] -> hd
  | _ :: tl -> last tl

let _ =
  last nums
