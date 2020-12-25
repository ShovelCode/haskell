-- Returning strings depending on integers received through
-- a list
-- Tested 0
boomBangs xs = [ if x < 10 
				 then "Boom!"
				 else "Bang!" | x <- xs, odd x]
