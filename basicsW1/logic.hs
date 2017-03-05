--boolean logic

myand :: Bool -> Bool -> Bool
myand b1 True = b1
myand b1 False = False

myor :: Bool -> Bool -> Bool
myor b1 True = True
myor b1 False = b1
myor b1 b2 = False