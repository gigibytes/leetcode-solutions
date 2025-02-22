(* incomplete. parsing is a bit off. need newline to get last num for some reason. *)
let cals = 
{|
1234
5678

1000

2222|} in
let cals_list = String.split_on_char '\n' cals in
let rec split_calories cal_list acc_sub acc =
  match cal_list with
  | hd :: tl when hd != "" -> split_calories tl (hd :: acc_sub) acc
  | hd :: tl -> split_calories tl [] (acc_sub :: acc)
  | [] -> acc
in
let nested_cals_list = split_calories cals_list [] [] 
in
nested_cals_list 
|> List.map (fun l -> function
| [] -> 0
| lst -> List.map Int.of_string l |> List.sum)
(* need to find or write actual functions *)
