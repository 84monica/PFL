-- FIBONACCI
import BigNumber
import Data.Char

-- Ex 1.1
-- CALCULO DO ENÉSIMO ELEMENTO
fibRec :: (Integral a) => a-> a
fibRec 0 = 0
fibRec 1 = 1
fibRec a = fibRec(a-1) + fibRec(a-2)

-- Ex 1.2
-- LISTA DE RESULTADOS PARCIAIS
-- TODO
-- NÂO ENTENDI O PROBLEMA


-- Ex 1.3
-- LISTA INFINITA
-- RETORNA O ELEMENTO DE ORDEM N
listaInfinita :: Num n => [n]
listaInfinita = 0 : nxt
    where nxt = 1 : zipWith (+) listaInfinita nxt

takeListaInfinita :: Num n => Int -> [n]
takeListaInfinita = flip take listaInfinita

fibListaInfinita :: Int -> Int
fibListaInfinita a = (takeListaInfinita (a + 1)) !! a

-- Ex 3
-- FIBONACCI IMPLEMENTATION USING BIG NUMBERS
fibRecBN :: BigNumber -> BigNumber
fibRecBN a = scanner(show (fibRec (stringToInt(output a))))

-- TODO
-- fibListaBN :: BigNumber -> BigNumber

fibListaInfinitaBN :: BigNumber -> BigNumber
fibListaInfinitaBN a = scanner(show (fibListaInfinita (stringToInt(output a))))

main = do
  --TESTS
  -- 1.1
  print(fibRec 10)
  -- 1.2
  -- print(fibLista 10)
  -- 1.3
  print(fibListaInfinita 10)
  -- 3
  print(fibRecBN [1, 0])
  print(fibListaInfinitaBN [1, 0])
