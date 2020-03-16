module Main exposing (main)

import Browser
import Html exposing (Attribute, Html, div, input, text)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput)
import String exposing (fromInt)


main =
    Browser.sandbox { init = init, update = update, view = view }


type alias Model =
    String


init : Model
init =
    ""


type Msg
    = Change String
update : Msg -> Model -> Model
update msg model =
    case msg of
        Change newString ->
            newString


view : Model -> Html Msg
view model =
    div[] [
    input[placeholder "text to reverse", value model, onInput Change][]
    ,
    div[][text (String.reverse model)]
    ,
    div[][text (fromInt (String.length model))]
    ]