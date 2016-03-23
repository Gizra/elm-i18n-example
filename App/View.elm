module App.View where

import App.Model as App exposing (Model)
import App.Update exposing (Action(..))

import Html exposing (div, h2, i, li, node, span, text, ul, button, Html)
import Html.Attributes exposing (class, classList, disabled, id, href, style, target, attribute)
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
  let
    -- Check if a language is the current language
    isCurrent lang' =
      lang == lang'

    button' lang' name =
      button
        [ disabled (isCurrent lang')
        , onClick address <| SetLanguage lang'
        ]
        [ text name ]

  in
    div
      []
      [ button' English "English"
      , button' Spanish "Spanish"
      ]

viewWelcomeMessage : Language -> Html
viewWelcomeMessage lang =
  div
    []
    [ div [] [ text <| translate lang Login ]
    , div [] [ text <| translate lang <| WelcomeBack {name = "elmlang"} ]
    ]
