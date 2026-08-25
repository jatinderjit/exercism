module Pangram exposing (..)

import Set exposing (Set)


alphabets : Set Char
alphabets =
    String.toList "abcdefghijklmnopqrstuvwxyz"
        |> Set.fromList


isPangram : String -> Bool
isPangram s =
    String.toLower s
        |> String.foldl (\c set -> Set.remove c set) alphabets
        |> Set.isEmpty