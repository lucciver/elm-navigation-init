module Routing exposing (..)

import Navigation exposing (Location)
import UrlParser as Url exposing ((</>), (<?>), s, int, stringParam, top)


type Route
    = Home
    | NotFoundRoute


route : Parser (Route -> a) a
route =
    oneOf
        [ Url.map Home
        ]


parseLocation : Location -> Route
parseLocation location =
    case (parseHash route location) of
        Just route ->
            route

        Nothing ->
            NotFoundRoute
