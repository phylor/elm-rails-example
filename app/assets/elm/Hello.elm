module Hello exposing (main)

import Html exposing (..)
import Html.App
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)

type alias Model =
    { quote : String
    }

init : Model -> (Model, Cmd message)
init flags =
    ( Model flags.quote, Cmd.none )

update : Model -> Model
update model =
    model

main : Program Model
main =
  Html.App.programWithFlags
        { init = init
        , update = \message model -> ( update model, Cmd.none )
        , subscriptions = \_ -> Sub.none
        , view = view
        }

view : Model -> Html message
view model =
    div [] [ text model.quote ]
