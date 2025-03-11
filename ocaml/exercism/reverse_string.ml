let reverse_string s =
  String.to_seq s 
  |> List.of_seq 
  |> List.map (fun c -> String.make 1 c) 
  |> List.rev 
  |> String.concat ""
