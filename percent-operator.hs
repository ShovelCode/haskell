infixl 7 %

(%) :: Double -> Double -> Double
a % b = (a / 100) * b

tax :: Double
tax = 8 % 250

main :: IO ()
main = print (tax)
