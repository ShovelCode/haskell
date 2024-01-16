-- Using Maybe monad to handle possible failure
safeDivide :: Int -> Int -> Maybe Int
safeDivide _ 0 = Nothing
safeDivide x y = Just (x `div` y)

main :: IO ()
main = do
    let result = do
        a <- safeDivide 10 2
        b <- safeDivide 20 0
        c <- safeDivide 30 3
        return (a + b + c)
    
    case result of
        Just value -> print value
        Nothing -> putStrLn "Error: Division by zero occurred"
