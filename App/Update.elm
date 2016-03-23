module App.Update where

import App.Model as App exposing (initialModel, Model)
import Effects exposing (none)

init : (Model, Effects Action)
init =
  ( App.initialModel
  , Effects.none
  )

type Action
  = SetLanguage Language

update : Action -> Model -> (Model, Effects Action)
update action model =
  case action of
    SetLanguage lang ->
      ( {model | language = lang}
      , Effects.none
      )
