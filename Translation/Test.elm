module Translation.Test where

import ElmTest exposing (..)

import Translation.Utils exposing (..)

all : Test
all =
  suite "Translation tests"
    [ test "English no arguments" (assertEqual "Please login" (translate English Login))
    , test "Spanish no arguments" (assertEqual "Por favor haga login" (translate Spanish Login))
    , test "English with arguments" (assertEqual ("Welcome back elm") (translate English <| WelcomeBack { name = "elm" }))
    ]
