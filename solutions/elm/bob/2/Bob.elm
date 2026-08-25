module Bob exposing (hey)


hey : String -> String
hey x =
    let
        upperString =
            String.toUpper x

        lowerString =
            String.toLower x
    in
    if String.trim x == "" then
        "Fine. Be that way!"
    else if upperString /= lowerString && upperString == x then
        "Whoa, chill out!"
    else if String.endsWith "?" x then
        "Sure."
    else
        "Whatever."