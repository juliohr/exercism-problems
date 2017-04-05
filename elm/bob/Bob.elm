module Bob exposing (..)

import String exposing (endsWith, trim, isEmpty, toUpper, toLower)

hey : String -> String
hey sentence =
    if isYelling sentence then "Whoa, chill out!"
    else if isQuestion sentence then "Sure."
    else if isSilence sentence then "Fine. Be that way!"
    else "Whatever."

isYelling : String -> Bool
isYelling sentence =
     (toUpper sentence == sentence && toLower sentence /= sentence)

isQuestion : String -> Bool
isQuestion sentence =
    endsWith "?" sentence

isSilence : String -> Bool
isSilence sentence =
    trim sentence |> isEmpty
