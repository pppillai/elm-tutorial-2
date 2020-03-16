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


type alias Model1 =
    { content : String
    }


init : Model1
init =
    { content = "" }


type Msg
    = Change String


update : Msg -> Model1 -> Model1
update msg model =
    case msg of
        Change newString ->
            { model | content = newString }


view : Model1 -> Html Msg
view model =
    div []
        [ input [ placeholder "text to reverse", value model.content, onInput Change ] []
        , div [] [ text (String.reverse model.content) ]
        , div [] [ text (fromInt (String.length model.content)) ]
        ]
