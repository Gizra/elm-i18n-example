module App.Update
  (Action (..)
  , init
  , update
  )
  where

import App.Model as App exposing (initialModel, Model)
import Effects exposing (none, Effects)
import Translation.Utils exposing (..)

init : (Model, Effects Action)
init =
  ( App.initialModel
  , Effects.none
  )

type Action
  = SetLanguage Language
  | SetName String

update : Action -> Model -> (Model, Effects Action)
update action model =
  case action of
    SetLanguage lang ->
      ( {model | currentLanguage = lang}
      , Effects.none
      )

    SetName str ->
      ( {model | name = str}
      , Effects.none
      )
