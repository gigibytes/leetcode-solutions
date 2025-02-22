let is_pangram sentence =
  let lower_sentence = List.init (String.length sentence) (String.get sentence) |> List.map Char.lowercase_ascii in
  let alphabet = ['a'; 'b'; 'c'; 'd'; 'e'; 'f'; 'g'; 'h'; 'i'; 'j'; 'k'; 'l'; 'm'; 'n'; 'o'; 'p'; 'q'; 'r'; 's'; 't'; 'u'; 'v'; 'w'; 'x'; 'y'; 'z'] in
  let found = List.map (fun c -> List.mem c lower_sentence) alphabet
  in
  match (List.find_opt (fun b -> b == false) found) with
  | Some x -> false
  | None -> true
