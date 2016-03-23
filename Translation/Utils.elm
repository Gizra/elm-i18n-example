module Translation.Utils
  ( Language (..)
  , TranslationId (..)
  , translate
  )
  where

type alias TranslationSet =
  { english : String
  , spanish : String
  }

type TranslationId
  = Login
  | WelcomeBack {name : String}

type Language
  = English
  | Spanish

translate : Language -> TranslationId -> String
translate lang trans =
  let
    translationSet =
      case trans of
        Login ->
          TranslationSet "Please login" "Por favor haga login"

        WelcomeBack val ->
          TranslationSet ("Welcome back " ++ val.name) ("Bienvenido "  ++ val.name)
  in
    case lang of
      English ->
        .english translationSet
      Spanish ->
        .spanish translationSet
