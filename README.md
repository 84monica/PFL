# Trabalho Prático 1 - Programação Funcional e em Lógica

## Descrição dos testes usados para as funções
> Neste trabalho fomos testando as funções que criamos utilizando casos significativos. No caso do primeiro exercício do trabalho, estes podem ser encontrados no final do ficheiro Fib.hs. Neste caso, imprimimos o 10º elemento da sequência de Fibonacci, que deverá ser 55 para as três alíneas.
>
> No caso do exercício 2, os testes estão no ficheiro BigNumber.hs. Aí é imprimido um caso para cada alínea. No início testamos a função *scanner* que deve converter a string "11111" no BigNumber [1, 1, 1, 1, 1]. De seguida, testamos a função *output* que converte o BigNumber [1, 2, 3, 4] na string "1234". Seguidamente testamos os casos operadores de soma, subtração, multiplicação e de divisão dos BigNumbers sendo que a soma de [1, 2, 3] e [1, 2, 4] deverá dar [2, 4, 7], a subtração entre [1, 2, 4] e [1, 2, 3] deverá ser [1], a multiplicação de [1, 2, 3] e [1, 2, 4] deve ser [1, 5, 2, 5, 2] e a divisão entre [6, 0] e [2, 5] deve ser ([2],[1, 0]). Fizemos também diversos testes semelhantes a estes mas para testar a implementação com números negativos. No final, testamos a divisão de [6, 0] para o caso do denominador ser [0], o qual retornou *Nothing*.
>
> No exercício 3 testamos as funções criadas no primeiro exercício, para BigNumbers. Assim, para os três casos o resultado deverá ser [5, 5].
>
> No exercício 4 os testes realizados são explicados mais ao pormenor na parte do relatório referente a este exercício.

## Explicação do funcionamento das funções implementadas
Exercício 1.1
> A função *fibRec* implementa usando recursividade a sequência de Fibonacci.
> Retorna o elemento de ordem N calculando a soma entre o elemento N-1 e o elemento N-2, chamando assim a função recursivamente até chegar ao caso base, que será o 0 e o 1.

Exercício 1.2
> A função *fibLista* implementa a sequência de Fibonacci usando listas de resultados parciais.
> A função cria uma lista inicialmente com os valores 0 e 1 e uma lista com a tail desses valores (todos os elementos, exceto o primeiro). De seguida, combina os elementos das duas listas somando-os e assim, vai criando a sequência de Fibonacci.

Exercício 1.3
>  A resolução do problema da sequência de Fibonacci usando listas infinitas foi resolvida com a implementação 3 funções:
>
> A primeira função, *listaInfinita*, vai gerar uma lista infinita com a sequência de Fibonacci;
>
> No entanto, se simplesmente fizermos *print* da primeira função, a mesma irá estar sempre a gerar novos números.
> O objetivo seria retornar o elemento de ordem N, daí o uso da segunda função,  *takeListaInfinita*, que retorna uma lista até esse mesmo elemento;
>
> Por fim, a terceira função, *fibListaInfinita*, retorna apenas o elemento N.

Exercício 3
> As funções implementadas no exercício 3 começam por converter o input *BigNumber* introduzidos para *Int* para posteriormente chamar as funções implementadas nos exercícios da alínea 1. Antes de retornar, a função converte o resultado de *Int* outra vez para *BigNumber*.

Exercício 5
> O exercício 5 acrescenta a capacidade de detetar divisões por zero em compile-time.
> Quando a função *safeDivBN* recebe como denominador uma lista com um zero, esta imprime *Nothing* no seu resultado em vez do aviso de erro.

## Estratégia para a implementação das funções do Exercício 2
> Neste exercício começamos por definir o tipo *BigNumber* como uma lista de inteiros.
> Visto que a função também tem de suportar números negativos decidimos implementar na mesma como uma lista de inteiros mas com o primeiro elemento da lista a decidir se o número será positivos ou negativo.
> Posto isto, o número -12 seria implementado numa lista desta forma: [-1, 2].

Função Scanner
> Para esta função, a estratégia que usamos para a implementação foi bastante simples.
> Esta função começa por usar guardas para verificar se se trata de um número positivo ou negativo.
> Posteriormente a função mapeia cada carácter da *String* e retorna uma lista de *Int*, ou seja, retorna a nossa implementação dos *BigNumber*.

Função Output
> Esta função segue um raciocínio semelhante ao descrito acima, na função Scanner, exceto que irá fazer as operações contrárias, transformando um *BigNumber* numa *String*.

Função somaBN
> Esta função começa por transformar os *BigNumber* recebidos em inteiros para posteriormente fazer a soma entre eles.

Restantes funções
> As restantes funções de operações aritméticas seguem um raciocínio semelhante ao descrito em cima, na função *somaBN*.

## Exercício 4
> Os tipos de variáveis *Int* e *Integer* apesar de representarem ambos inteiros, têm algumas diferenças entre si.
>
> O tipo *Int* é um tipo de variável limitado, o que significa que tem um *minBound* e um *maxBound*.
> É possível saber estes limites correndo o comando *(minBound, maxBound) :: (Int, Int)*, que retorna seguinte o tuplo: (-9223372036854775808, 9223372036854775807).
>
> Por outro lado o tipo *Integer* não tem limites estabelecidos, apesar de ser limitado à memória da máquina em questão.
>
> Tendo em conta o que foi dito em cima, e sabendo que não existe propriamente um limite para o tipo de variáveis *Integer*, vamos considerar para este problema números para os quais o *runtime* das funções é aceitável.
> Posto isto, para a função *fibRec* conseguimos testar números até 30, enquanto que para a *fibListaInfinita* conseguimos até 5000. No entanto, a função mais eficiente que implementamos seria a * fibLista* que calcula números até aproximadamente 300000.
> Testando as mesmas funções para o tipo criado no exercício 2, *BigNumber*, chegamos à conclusão que a nossa implementação terá um *runtime* idêntico ao uso de *Integer* e *Int*.
>
> Por fim, os testes feitos para chegar a estas conclusões estão apresentados no final do ficheiro *Fib.hs*

### Projeto desenvolvido por:
> Sofia Teixeira up201806629
>
> Mónica Pereira up201905753
