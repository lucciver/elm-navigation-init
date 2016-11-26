module Widget.View exposing (..)

import Html exposing (Html, div, text, button)
import Html.Events exposing (onClick)
import Widget.Messages exposing (Msg(..))
import Widget.Models exposing (Model)


view : Model -> Html Msg
view model =
    div []
        [ div [] [ text (toString model.count) ]
        , button [ onClick Increment ] [ text "Click" ]
        ]
