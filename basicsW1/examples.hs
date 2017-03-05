--compute gcd

mygcd :: Int -> Int -> Int
mygcd a b
	| a >= b = mygcd b (mod a b)
	| otherwise = mygcd b a

--compute largest divisor of number n other than n
largestDivisor :: Int -> Int
largestDivisor n = search n (n-1)

search :: Int -> Int -> Int
search a b
	| (mod a b) == 0 = b
	| otherwise = search a (b-1)

--integer log: intLog 32 2....log32(base 2)
intLog :: Int -> Int -> Int
intLog 1 b = 0
intLog a b
	| (a>=b) = 1 + (intLog (div a b) b)
	| otherwise = 0

--reverse integer
intRev :: Int -> Int
intRev n
	| n < 10 = n
	| otherwise = (mod n 10)*(pow 10 (intLog n 10)) + (intRev (div n 10))

--n raised to the power k
pow :: Int -> Int -> Int
pow n k 
	| (k==0) = 1
	| otherwise = n*(pow n (k-1))