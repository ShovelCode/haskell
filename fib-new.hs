import Data.Function (fix)

-- A memoized Fibonacci function
fibonacci :: Int -> Integer
fibonacci = fix (memoize . fib)
  where
    fib _ 0 = 0
    fib _ 1 = 1
    fib rec n = rec (n - 1) + rec (n - 2)

-- Generic memoization function
memoize :: (Int -> a) -> Int -> a
memoize f = (map f [0..] !!)

-- Main function to display Fibonacci numbers
main :: IO ()
main = mapM_ (print . fibonacci) 
[0 .. 15]