module View exposing (..)

import Messages exposing (Msg(..))
import Html exposing (Html, div, text)
import Routing exposing (Route(..))
import Widget.View
import Models exposing (Model)


view : Model -> Html Msg
view model =
    div [] [ page model ]


page : Model -> Html Msg
page model =
    case model.route of
        Home ->
            Html.map WidgetMsg (Widget.View.view model.widgetModel)

        NotFoundRoute ->
            notFoundView


notFoundView : Html msg
notFoundView =
    div []
        [ text "Not found"
        ]
