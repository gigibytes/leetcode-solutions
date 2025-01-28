let rec count lst acc =
  match lst with
  | [] -> acc
  | hd :: tl -> count tl (acc + 1)

let length lst = count lst 0
