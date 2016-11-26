module Routing exposing (..)

import Navigation exposing (Location)
import UrlParser exposing (..)


type Route
    = Home
    | NotFoundRoute


route : Parser (Route -> a) a
route =
    oneOf
        [ map Home top
        ]


parseLocation : Location -> Route
parseLocation location =
    case (parseHash route location) of
        Just route ->
            route

        Nothing ->
            NotFoundRoute
