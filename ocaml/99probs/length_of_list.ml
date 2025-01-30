let rec count lst acc =
  match lst with
  | [] -> acc
  | hd :: tl -> count tl (acc + 1)

let length lst = count lst 0

(* adding this scanning/non-recursive implementation -- though i bet it's recursive under the hood *)
let count_fold lst =
  let ones = List.map (fun _ -> 1) lst in
  List.fold_right (fun x y -> x + y) ones 0
