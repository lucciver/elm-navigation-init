module Models exposing (..)

import Widget.Models
import Routing exposing (Route)


type alias Model =
    { widgetModel : Widget.Models.Model
    , route : Route
    }


initialModel : Routing.Route -> Model
initialModel route =
    { widgetModel = Widget.Models.initialModel
    , route = route
    }
