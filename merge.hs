merge :: Ord a => [a] -> [a] -> [a]
merge [] ys = ys
merge xs [] = xs
merge (x:xs) (y:ys)
    | x <= y    = x : merge xs (y:ys)
    | otherwise = y : merge (x:xs) ys

mergeSort :: Ord a => [a] -> [a]
mergeSort [] = []
mergeSort [x] = [x]
mergeSort xs = let (left, right) = split xs
               in merge (mergeSort left) (mergeSort right)
    where
        split :: [a] -> ([a], [a])
        split xs = let n = length xs `div` 2
                   in (take n xs, drop n xs)
