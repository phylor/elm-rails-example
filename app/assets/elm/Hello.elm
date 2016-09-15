module Hello exposing (main)

import Html exposing (..)
import Html.App

type alias Model =
    { quote : String
    }

init : Model -> (Model, Cmd message)
init flags =
    ( Model flags.quote, Cmd.none )

update : msg -> Model -> (Model, Cmd msg)
update message model =
    ( model, Cmd.none )

main : Program Model
main =
  Html.App.programWithFlags
        { init = init
        , update = update
        , subscriptions = \_ -> Sub.none
        , view = view
        }

view : Model -> Html message
view model =
    div [] [ text model.quote ]
