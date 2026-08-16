module Handler.Home where

import Import

getHomeR :: Handler Html
getHomeR = do
    defaultLayout $ do
        --attempt to preload ghcjs runtime
        addScript $ StaticR ghcjs_rts_js
        setTitle "Welcome to Carnap: MSU!"
        $(widgetFile "homepage")
