let acronym words =
  let punct = ['!'; '_'; '.'; ','; '@'; '#'; '$'; '['; ']'; '{'; '*'; '&'; '%'; '^'; ';'; '('; ')' ]
  in
  let word_list = String.split_on_char ' ' words
  in
  let remove_punct c = function
  | c when List.mem c punct -> '_'
  | c when c = '-' -> ' '
  | c -> c
  in
  let new_list = (List.map (fun w -> List.init (String.length w) (String.get w) |> remove_punct) word_list)
  in
  let rec get_first_char lst = function
  | c when c = ' ' -> ""
  | c -> String.make 1 c
  in List.fold_left get_first_char "" new_list
