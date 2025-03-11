type t =
  | Silence
  | Speech
  | Yell 
  | Question
  | Yelled_Question

let response_for prompt =
    let get_prompt_type prompt =
      if prompt = String.empty || String.trim prompt = String.empty then Silence
      else if prompt = String.uppercase_ascii prompt && not (String.uppercase_ascii prompt = String.lowercase_ascii prompt) then
        if String.ends_with ~suffix:"?" (String.trim prompt) then Yelled_Question
        else Yell
      else if String.ends_with ~suffix:"?" (String.trim prompt) then Question
      else Speech
    in
    let prompt_type = get_prompt_type prompt in 
    match prompt_type with
    | Question -> "Sure."
    | Yell -> "Whoa, chill out!"
    | Yelled_Question -> "Calm down, I know what I'm doing!"
    | Silence -> "Fine. Be that way!"
    | Speech -> "Whatever."
