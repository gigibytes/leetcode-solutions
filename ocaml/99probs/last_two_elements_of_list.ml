let nums = [1; 2; 3; 4; 5]

let rec last_two l =
  match l with
  | [] -> None
  | [ x; xs ] -> Some [ x; xs ]
  | _ :: tl -> last_two tl

let _ =
  last_two nums
