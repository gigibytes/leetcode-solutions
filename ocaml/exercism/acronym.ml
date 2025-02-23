let acronym words =
  let words_no_hyphen = String.split_on_char '-' words |> List.fold_left (^) "" in    
  let punct = ['!'; '_'; '.'; ','; '@'; '#'; '$'; '['; ']'; '{'; '*'; '&'; '%'; '^'; ';'; '('; ')' ] in
  let word_list = String.split_on_char ' ' words_no_hyphen in
  word_list |> List.map (fun w -> List.init (String.length w) (String.get w) |> List.find (fun c -> List.mem c punct |> Bool.not) |> Char.uppercase_ascii) |> List.to_seq |> String.of_seq
