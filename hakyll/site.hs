--------------------------------------------------------------------------------
{-# LANGUAGE OverloadedStrings, ViewPatterns #-}
import           Data.Monoid (mappend, (<>))
import           Hakyll
import           Control.Applicative
import Debug.Trace
import System.FilePath
import Data.Ord
import Data.List
--------------------------------------------------------------------------------
main :: IO ()
main = hakyll $ do
    match "images/*" $ do
        route   idRoute
        compile copyFileCompiler

    match "css/*" $ do
        route   idRoute
        compile compressCssCompiler

    match "pages/*" $ do
        version "navbar" $ compile $ pandocCompiler
        version "page" $ do
          compile $ do
            pages <- sortBy (comparing itemIdentifier) <$> loadAll ("pages/*" .&&. hasVersion "navbar")
            i <- getUnderlying
            let pageCtx = listField "pages" (pageCtx' i) (return pages) `mappend`
                          defaultContext
            pandocCompiler
              >>= loadAndApplyTemplate "templates/default.html" pageCtx
              >>= relativizeUrls
          route $ customRoute $ pageUrl
          match "pages/00-home.*" $ do route $ constRoute "index.html"


    match "templates/*" $ compile templateCompiler


--------------------------------------------------------------------------------
pageCtx' :: Identifier -> Context String
pageCtx' i  = field "active" (\it -> if (removeVersion (itemIdentifier it) == removeVersion i) then pure "1" else empty)
           <> field "href" (\it -> return $ pageUrl $ itemIdentifier it) 
           <> defaultContext
  where removeVersion = setVersion Nothing

pageUrl :: Identifier -> FilePath
pageUrl (toFilePath -> x) | "pages/00-home.html" == replaceExtension x "html" = "index.html"
                          | otherwise                                         =  replaceExtension x "html"
