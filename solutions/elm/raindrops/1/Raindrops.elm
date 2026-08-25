module Raindrops exposing (..)


divisibleBy3 : Int -> String
divisibleBy3 n =
    if n % 3 == 0 then
        "Pling"
    else
        ""


divisibleBy5 : Int -> String
divisibleBy5 n =
    if n % 5 == 0 then
        "Plang"
    else
        ""


divisibleBy7 : Int -> String
divisibleBy7 n =
    if n % 7 == 0 then
        "Plong"
    else
        ""


raindrops : Int -> String
raindrops n =
    divisibleBy3 n
        ++ divisibleBy5 n
        ++ divisibleBy7 n
        |> (\s ->
                if String.isEmpty s then
                    toString n
                else
                    s
           )