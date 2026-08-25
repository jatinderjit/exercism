module Raindrops exposing (..)


divisibleBy : Int -> String -> Int -> String
divisibleBy n out number =
    if number % n == 0 then
        out
    else
        ""


raindrops : Int -> String
raindrops n =
    [ divisibleBy 3 "Pling" n
    , divisibleBy 5 "Plang" n
    , divisibleBy 7 "Plong" n
    ]
        |> List.filter (not << String.isEmpty)
        |> (\list ->
                if List.isEmpty list then
                    toString n
                else
                    String.concat list
           )