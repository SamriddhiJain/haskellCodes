--computes factorial of a number

factorial :: Int -> Int
factorial 0 = 1
factorial n
	| n < 0 = factorial (-n)
	| n > 0 = n*(factorial (n-1))