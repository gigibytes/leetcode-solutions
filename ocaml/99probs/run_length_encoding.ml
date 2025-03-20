let test_data = ["a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "e"; "e"; "e"; "e"] in
let encode lst =
  List.iter
  (* scan list for current string, get sublist from position? get length of sublist, acc that * current char? *)