-- BIG NUMBERS

-- 2.1
-- Big Number Defenition
module BigNumber (BigNumber, scanner, output, somaBN, subBN, mulBN) where
import Data.Char

type BigNumber = [Int]

-- 2.2
-- Scanner function converts string into big number
scanner :: String -> BigNumber
scanner s = map digitToInt s

-- 2.3
-- Output function converts big number into String
output :: BigNumber -> String
output b = map intToDigit b

-- 2.4
-- converts string to int
stringToInt :: String -> Int
stringToInt x = read x :: Int

-- somaBN function sums 2 BigNumber
somaBN :: BigNumber -> BigNumber -> BigNumber
somaBN a b =  scanner (show (stringToInt(output a) + stringToInt(output a)))

-- 2.5
-- subBN function substracts 2 BigNumber
subBN :: BigNumber -> BigNumber -> BigNumber
subBN a b =  scanner (show (stringToInt(output a) - stringToInt(output a)))

-- 2.6
-- mulBN function multiplies 2 BigNumber
mulBN :: BigNumber -> BigNumber -> BigNumber
mulBN a b =  scanner (show (stringToInt(output a) * stringToInt(output a)))

-- 2.7
-- TODO
-- divBN function divides 2 BigNumber
-- divBN :: BigNumber -> BigNumber -> (BigNumber, BigNumber)
