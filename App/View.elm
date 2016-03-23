module App.View where

import App.Model as App exposing (Model)
import App.Update exposing (Action(..))

import Html exposing (button, div, input, text, Attribute, Html)
import Html.Attributes exposing (action, class, disabled, id, hidden, href, placeholder, required, size, style, type', value)
import Html.Events exposing (on, onClick, targetValue)
import Translation.Utils exposing (..)

view : Signal.Address Action -> Model -> Html
view address model =
    div
      [ containerStyle ]
      [ viewLanguageSwitcher address model.currentLanguage
      , viewWelcomeMessage address model
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
        , elementStyle
        ]
        [ text name ]

  in
    div
      []
      [ button' English "English"
      , button' Spanish "Spanish"
      ]

viewWelcomeMessage : Signal.Address Action -> Model -> Html
viewWelcomeMessage address model =
  div
    []
    [ div [ elementStyle ] [ text <| translate model.currentLanguage Login ]
    , div [ elementStyle ] [ text <| translate model.currentLanguage <| WelcomeBack { name = model.name } ]
    , input
      [ type' "text"
      , placeholder "Name"
      , value model.name
      , on "input" targetValue (Signal.message address << SetName)
      ]
      []
    ]

containerStyle : Attribute
containerStyle =
  style
    [ ("width", "100%")
    , ("height", "100%")
    , ("background-color", "#1275b2")
    , ("text-align", "center")
    , ("padding", "100px 0")
    , ("color", "white")
    , ("font-size", "20px")
    ]

elementStyle : Attribute
elementStyle =
  style
    [ ("margin-bottom", "20px")

    ]
