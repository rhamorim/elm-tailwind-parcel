module Main exposing (main)

import Browser
import Html exposing (Html, div, text)
import Html.Attributes exposing (class)

type alias Model
    = Int

type Msg
    = Stub

init: () -> ( Model, Cmd msg )
init _ =
    (0, Cmd.none)

subscriptions: Model -> Sub Msg
subscriptions model =
    Sub.none

update: Msg -> Model -> (Model, Cmd Msg)
update msg model =
    ( model, Cmd.none )

view: Model -> Html Msg
view model =
    div [ class "text-yellow-300" ] [ text "Hello World from Elm!"]

main: Program () Model Msg
main =
  Browser.element
    { init = init
    , view = view
    , update = update
    , subscriptions = subscriptions
    }
