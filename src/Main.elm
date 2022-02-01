module Main exposing (..)

import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)



-- MAIN


main : Program () Model Msg
main =
  Browser.sandbox { init = init, update = update, view = view }


-- MODEL
-- State of the application

type alias Model = Int

init : Model
init =
  0

-- UPDATE
-- Change State based on Msg 

type Msg
  = Increment
  | Decrement


update : Msg -> Model -> Model
update msg model =
  case msg of
    Increment ->
      model + 1

    Decrement ->
      model - 1



-- VIEW
-- State -> HTML

view : Model -> Html Msg
view model =
  div []
    [ div [] [ text (String.fromInt model) ]
    , button [ onClick Increment ] [ text "Generate passwords" ]
    ]