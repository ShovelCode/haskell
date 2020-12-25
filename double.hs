-- Mathematical operations on Num typeclass elements.
-- Tested 1
doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100 then x else x*2


