{- This is the main Elm source for the jokey website, sempai-notice.me.

Read up on syntax:
  http://elm-lang.org/learn/Syntax.elm

Run this command to compile it to JS:
  rake build

-}

import Graphics.Element (..)
--import List
import Text (..)

main : Element
main =
    flow down
      [ helloWorld
      ]


helloWorld : Element
helloWorld =
    asText "Will sempai notice me?"

