--Recursively defined factorial function
--Tested 1
factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n-1)

