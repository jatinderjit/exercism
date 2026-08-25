module Raindrops exposing (..)


divisibleBy : Int -> String -> Int -> Maybe String
divisibleBy n word number =
    if number % n == 0 then
        Just word
    else
        Nothing


raindrops : Int -> String
raindrops n =
    [ ( 3, "Pling" )
    , ( 5, "Plang" )
    , ( 7, "Plong" )
    ]
        |> List.filterMap (\( f, w ) -> divisibleBy f w n)
        |> (\list ->
                if List.isEmpty list then
                    toString n
                else
                    String.concat list
           )