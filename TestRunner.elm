module Main where

import Graphics.Element exposing (Element)

import ElmTest exposing (..)

import Translation.Test as Translation


allTests : Test
allTests =
  suite "All tests"
    [ Translation.all
    ]

main : Element
main =
  elementRunner allTests
