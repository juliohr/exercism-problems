module Pangram exposing (..)

import Char
import Set

isPangram : String -> Bool
isPangram str =
    String.toLower str
        |> String.toList
        |> Set.fromList
        |> Set.filter Char.isLower
        |> Set.size
        |> (==) 26
