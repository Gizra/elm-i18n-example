module App.Model where

import Translation.Utils exposing (..)

type alias Model =
  { currentLanguage : Language
  }


initialModel : Model
initialModel =
  { currentLanguage = English
  }
