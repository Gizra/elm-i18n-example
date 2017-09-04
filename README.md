# Elm i18n example

> A dummy webapp showing a language switcher and translated text, with type safety.

Read the [blog post](http://gizra.com/content/elm-i18n-type-safety)

## Execute

Run `elm-reactor`

App: http://localhost:8000/Main.elm
Tests: http://localhost:8000/TestRunner.elm

## Generating Elm translations from JSON files

If you need a tool for automatically generating type safe Elm translations from
JSON files:

    # file: en_US.json
    {
        "Hello": "Hello, {0}. Is it {1} you are looking for?",
        "Next" : "Next",
        "No": "No",
        "Previous": "Previous",
        "Yes": "Yes"
    }

you can take a look
at [i18n-to-elm](https://github.com/dragonwasrobot/i18n-to-elm).
