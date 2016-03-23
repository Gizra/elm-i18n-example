module App.View where

import App.Model as App exposing (Model)
import App.Update exposing (Action(..))

import Html exposing (div, h2, i, li, node, span, text, ul, button, Html)
import Html.Attributes exposing (class, classList, id, href, style, target, attribute)
import Html.Events exposing (onClick)
import Translation.Utils exposing (..)

view : Signal.Address Action -> Model -> Html
view address model =
    div
      []
      [ viewLanguageSwitcher address model.currentLanguage
      , viewWelcomeMessage model.currentLanguage
      ]


viewLanguageSwitcher : Signal.Address Action -> Language -> Html
viewLanguageSwitcher address lang =
  div
    []
    [ button [onClick address <| SetLanguage English ] [ text "English" ]
    , button [onClick address <| SetLanguage Spanish] [ text "Spanish" ]
    ]

viewWelcomeMessage : Language -> Html
viewWelcomeMessage lang =
  div [] [text <| translate lang <| WelcomeBack {name = "elmlang"}]
