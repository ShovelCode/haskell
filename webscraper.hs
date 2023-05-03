{-# LANGUAGE OverloadedStrings #-}

import Network.HTTP.Conduit (simpleHttp)
import Text.HTML.TagSoup

main :: IO ()
main = do
    -- Fetch the HTML data from the website
    html <- simpleHttp "https://www.example.com"
    
    -- Parse the HTML data using TagSoup
    let tags = parseTags html
    
    -- Extract the text from all the <a> tags on the page
    let links = [fromAttrib "href" link | link <- filter (isTagOpenName "a") tags]
    
    -- Print the extracted links
    putStrLn "Links found:"
    mapM_ putStrLn links
