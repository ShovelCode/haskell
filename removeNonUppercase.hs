-- Removes non uppercase letters out of a string(list of characters)
-- Tested 1
removeNonUppercase st = [c | c <- st, c `elem` ['A' .. 'Z']]
