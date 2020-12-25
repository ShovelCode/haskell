--Boolean check to see if a character is upppercase English letter
--Tested 1
isUpperAlphanum :: Char -> Bool
isUpperAlphanum = (`elem` ['A'..'Z'])
