-- FIBONACCI
import BigNumber
import Data.Char

-- Ex 1.1
-- CALCULATES FIBONACCI OF ELEMENT N
fibRec :: (Integral a) => a-> a
fibRec 0 = 0
fibRec 1 = 1
fibRec a = fibRec(a-1) + fibRec(a-2)

-- Ex 1.2
-- CALCULATES FIBONACCI OF ELEMENT N USING LISTS
fibLista n = fibList !! n
fibList = 0 : 1 : zipWith (+) fibList (tail fibList)

-- Ex 1.3
-- CALCULATES FIBONACCI OF ELEMENT N USING INFINITE LISTS
-- INFINTE LIST
listaInfinita :: Num n => [n]
listaInfinita = 0 : nxt
    where nxt = 1 : zipWith (+) listaInfinita nxt

takeListaInfinita :: Num n => Int -> [n]
takeListaInfinita = flip take listaInfinita

-- RETURNS ELEMENT OF ORDER N
fibListaInfinita :: Int -> Int
fibListaInfinita a = (takeListaInfinita (a + 1)) !! a

-- Ex 3
-- FIBONACCI IMPLEMENTATION USING BIG NUMBERS
fibRecBN :: BigNumber -> BigNumber
fibRecBN a = scanner(show (fibRec (stringToInt(output a))))

fibListaBN :: BigNumber -> BigNumber
fibListaBN a = scanner(show (fibLista (stringToInt(output a))))

fibListaInfinitaBN :: BigNumber -> BigNumber
fibListaInfinitaBN a = scanner(show (fibListaInfinita (stringToInt(output a))))

main = do
  --TESTS FIBONACCI
  -- 1.1
  print(fibRec 10)
  -- 1.2
  print(fibLista 10)
  -- 1.3
  print(fibListaInfinita 10)
  -- 3.
  print(fibRecBN [1, 0])
  print(fibListaBN [1, 0])
  print(fibListaInfinitaBN [1, 0])
  -- 4.
  -- INT AND INTEGER TESTS
  print((minBound, maxBound) :: (Int, Int))
  print(fibRec 30)
  print(fibLista 300000)
  print(fibListaInfinita 5000)
  -- BIG NUMBER TESTS
  print(fibRecBN [3, 0])
  print(fibListaBN [3, 0, 0, 0, 0, 0])
  print(fibListaInfinitaBN[5, 0, 0, 0])
