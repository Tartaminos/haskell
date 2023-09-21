module Main (main) where

main :: IO ()
main = do 
    putStrLn "what's your name? "
    name <- getLine
    putStr name
    putStrLn ", welcome!"