module Leap exposing (..)

type alias Year = Int

isLeapYear : Year -> Bool
isLeapYear year =
    if ((year % 4 == 0) && (year % 100 /= 0)) || (year % 400 == 0) then True
    else False
