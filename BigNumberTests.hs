import BigNumber

-- 2.1
b :: BigNumber
b = [1, 2, 3, 4]

main = do
  -- TESTS BIG NUMBER FOR POSITIVE NUMBERS AND NEGATIVE
  -- 2.2
  print(scanner "1111")
  print(scanner "-1111")
  -- 2.3
  print(output b)
  print(output [-1, 2, 3, 4])
  -- 2.4
  print(somaBN [1, 2, 3] [1, 2, 4])
  print(somaBN [-1, 2, 3] [-1, 2, 3])
  print(somaBN [-1, 2, 3] [1, 2, 3])
  -- 2.5
  print(subBN [1, 2, 4] [1, 2, 3])
  print(subBN [1, 2, 4] [-1, 2, 4])
  -- 2.6
  print(mulBN [1, 2, 3] [1, 2, 4])
  -- 2.7
  print(divBN [6, 0] [2, 5])
  -- 5
  print(safeDiv [6, 0] [0])
