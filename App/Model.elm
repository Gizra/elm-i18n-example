module App.Model where

import Translation.Utils exposing (..)

type alias Model =
  { currentLanguage : Language
  , name : String
  }


initialModel : Model
initialModel =
  { currentLanguage = English
  , name = "Elm lover"
  }
