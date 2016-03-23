import App.Model as App exposing (Model)
import App.Update exposing (init, update)
import App.View exposing (view)
import StartApp as StartApp
import Task exposing (Task)


app =
  StartApp.start
    { init = App.Update.init
    , update = App.Update.update
    , view = App.View.view
    , inputs = []
    }

main =
  app.html
