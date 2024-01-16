-- Define a simple functor
data MyFunctor a = MyValue a deriving (Show)

-- Make MyFunctor an instance of Functor
instance Functor MyFunctor where
    fmap f (MyValue x) = MyValue (f x)

-- Using fmap to apply a function to a MyFunctor
increment :: MyFunctor Int -> MyFunctor Int
increment = fmap (+1)

main :: IO ()
main = do
    let original = MyValue 5
    let modified = increment original
    print original
    print modified
