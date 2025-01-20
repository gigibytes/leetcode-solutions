let nums = [1; 2; 3; 4; 5]

let rec last l =
  match l with
  (* I had '[] -> []', it should return None instead *)
  | [] -> None
  (* This also needs to change to Some because we're returning None in the first case *)
  (* the return type of the function becomes the option type *)
  | [ x ] -> Some x
  (* Actually, now i see that if I had paid attn to the type in the problem desc example code, I *)
  (* could have gotten the hint about using None/Some *)
  | _ :: tl -> last tl

let _ =
  last nums
