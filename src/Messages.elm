module Messages exposing (..)

import Widget.Messages
import Navigation exposing (Location)


type Msg
    = WidgetMsg Widget.Messages.Msg
    | OnLocationChange Location
