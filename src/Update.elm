module Update exposing (..)

import Messages exposing (Msg(..))
import Widget.Update
import Routing exposing (parseLocation)
import Models exposing (Model)


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        WidgetMsg subMsg ->
            let
                ( updatedWidget, cmd ) =
                    Widget.Update.update subMsg model.widgetModel
            in
                ( { model | widgetModel = updatedWidget }, Cmd.map WidgetMsg cmd )

        OnLocationChange location ->
            let
                newRoute =
                    parseLocation location
            in
                ( { model | route = newRoute }, Cmd.none )
