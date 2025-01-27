import Data.List

myInit :: [Int] -> [Int]
myInit (x:[]) = []
myInit (x:xs) = x:myInit xs
myInit []     = []

myLast :: [Int] -> Int
myLast (x:[]) = x
myLast (x:xs) = myLast xs

myNull :: [Int] -> Bool
myNull [] = True
myNull _  = False

myLength :: [Int] -> Int
myLength (x:xs) = 1+myLength(xs)
myLength []     = 0

myReverse :: [Int] -> [Int]
myReverse rl = aux rl []
    where aux (x:xs) l = aux xs (x:l)
          aux [] l     = l

recReverse :: [Int] -> [Int]
recReverse []     = []
recReverse (x:xs) = recReverse xs ++ [x]

myTake :: Int -> [Int] -> [Int]
myTake 0 _      = []
myTake n (x:xs) = x:myTake (n-1) xs

get :: [a] -> Int -> a
get (x:xs) 0 = x
get (x:xs) n = get xs (n-1)

myConcat :: [[Int]] -> [Int]
myConcat (x:xs) = x ++ myConcat xs
myConcat []     = []

myDrop :: Int -> [Int] -> [Int]
myDrop 0 l      = l
myDrop n (x:xs) = myDrop (n-1) xs

myInsert :: Ord a => a -> [a] -> [a]
myInsert n []     = [n]
myInsert n (x:xs) | n >  x = x:myInsert n xs
                  | n <= x = n:x:xs

mySort :: Ord a => [a] -> [a]
mySort l = aux [] l
    where aux nl (x:xs) = aux (myInsert x nl) xs
          aux nl []     = nl
