import BigNumber

b :: BigNumber
b = [1, 2, 3, 4]

main = do
  print(scanner "11111")
  print(output b)
  print(somaBN [1, 2, 3] [1, 2, 3])
  print(subBN [1, 2, 3] [1, 2, 3])
  print(mulBN [1, 2, 3] [1, 2, 3])
