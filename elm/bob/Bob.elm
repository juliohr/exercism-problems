module Bob exposing (..)
import Char exposing (isDigit)

hey : String -> String
hey sentence =
    if (String.toUpper sentence) == sentence then
        "Whoa, chill out!"
    else if String.contains "?" sentence then
        "Sure."
    else if (String.all isDigit sentence) == True then
        "Whatever."
    else
        "Whatever."
