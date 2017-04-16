module Raindrops exposing (..)

raindrops : Int -> String
raindrops num =
    case getRaindrops num of
        "" ->
            toString num

        str ->
            str


getRaindrops : Int -> String
getRaindrops num =
    List.map (specialFactorString num) [(3, "Pling"), (5, "Plang"), (7, "Plong")]
    |> String.concat



specialFactorString : Int -> (Int, String) -> String
specialFactorString num (factor, str) =
    if (num % factor == 0) then str
    else ""
