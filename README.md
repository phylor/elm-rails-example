# Elm Integration in Rails 5

This is an example project showing how to integrate Elm in your Rails application. It uses the [elm-rails gem](https://github.com/mariochavez/elm-rails/tree/rails5_with_sprockets).

## How to recreate the example project

1. Create a rails project

    ```bash
    rails new elm-rails-example
    ```

2. Follow the [installation instructions](https://github.com/mariochavez/elm-rails/tree/rails5_with_sprockets) of the `elm-rails` gem.

### Usage

1. Require your Elm module named `Hello` in your `application.js`:

   ```
   //= require Hello
   ```

2. Include your Elm module in your view:

    ```
    <%= elm_embed('Elm.Hello', { quote: ' world!' }) %>
    ```
    
3. Use flags in your Elm module to read the data provided in the Rails view. Note that you need to define a type for the data you have provided in the view.

    ```elm
    module Hello exposing (main)
    
    import Html exposing (..)
    import Html.App
    
    type alias Model =
        { quote : String
        }
    
    init : Model -> (Model, Cmd message)
    init flags =
        ( Model flags.quote, Cmd.none )
    
    update : msg -> Model -> (Model, Cmd msg)
    update message model =
        ( model, Cmd.none )
    
    main : Program Model
    main =
      Html.App.programWithFlags
            { init = init
            , update = update
            , subscriptions = \_ -> Sub.none
            , view = view
            }
    
    view : Model -> Html message
    view model =
        div [] [ text model.quote ]
    ```
    

