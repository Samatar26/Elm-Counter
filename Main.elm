module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)


main =
    Html.beginnerProgram
        { model = 0
        , view = view
        , update = update
        }


type alias Model =
    Int


type Msg
    = Inc
    | Dec


update : Msg -> Model -> Model
update message model =
    case message of
        Inc ->
            model + 1

        Dec ->
            model - 1


view : Model -> Html Msg
view model =
    div []
        [ h1 [] [ text "Counter:" ]
        , div [] [ text (toString model) ]
        , button [ onClick Inc ] [ text "Increment" ]
        , button [ onClick Dec ] [ text "Decrement" ]
        ]
