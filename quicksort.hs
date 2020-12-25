--The quicksort algorithm generalized for all elements of the Ord typeclass
--Tested 1
quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
  let smallerOrEqual = [ a | a <- xs, a <= x]
      larger = [a | a <- xs, a > x]
  in  quicksort smallerOrEqual ++ [x] ++ quicksort larger
