-- FIBONACCI

-- Ex 1.1
-- CALCULO DO ENÉSIMO ELEMENTO
fibRec :: (Integral a) => a-> a
fibRec 0 = 0
fibRec 1 = 1
fibRec a = fibRec(a-1) + fibRec(a-2)

-- Ex 1.2
-- TODO
-- LISTA DE RESULTADOS PARCIAIS


-- Ex 1.3
-- LISTA INFINITA
-- RETORNA O ELEMENTO DE ORDEM N
listaInfinita :: Num n => [n]
listaInfinita = 0 : nxt
    where nxt = 1 : zipWith (+) listaInfinita nxt

fibListaInfinita :: Num n => Int -> [n]
fibListaInfinita = flip take listaInfinita

main = do
  --TESTS
  -- 1.1
  print(fibRec 10)
  -- 1.2
  -- print(fibLista 10)
  -- 1.3
  print(fibListaInfinita 10)
